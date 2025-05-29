import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MemoryMatchApp());
}

class MemoryMatchApp extends StatelessWidget {
  const MemoryMatchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Match Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MemoryMatchGame(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MemoryMatchGame extends StatefulWidget {
  const MemoryMatchGame({Key? key}) : super(key: key);

  @override
  _MemoryMatchGameState createState() => _MemoryMatchGameState();
}

class _MemoryMatchGameState extends State<MemoryMatchGame> with TickerProviderStateMixin {
  final List<String> _icons = [
    '🍎', '🍌', '🍇', '🍊', '🍓', '🍉', '🍒', '🍑',
    '🍎', '🍌', '🍇', '🍊', '🍓', '🍉', '🍒', '🍑',
  ];
  
  late List<String> _cards;
  List<bool> _flipped = [];
  List<bool> _matched = [];
  int? _firstCardIndex;
  int? _secondCardIndex;
  int _moves = 0;
  int _matches = 0;
  bool _isProcessing = false;
  late AnimationController _shakeController;
  late AnimationController _flipController;
  late Animation<double> _flipAnimation;
  
  @override
  void initState() {
    super.initState();
    _initGame();
    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    
    _flipController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    
    _flipAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _flipController, curve: Curves.easeInOut)
    );
  }

  @override
  void dispose() {
    _shakeController.dispose();
    _flipController.dispose();
    super.dispose();
  }

  void _initGame() {
    // Shuffle the cards
    _cards = List.from(_icons);
    _cards.shuffle();
    
    // Initialize card states
    _flipped = List.generate(_cards.length, (_) => false);
    _matched = List.generate(_cards.length, (_) => false);
    
    // Reset game state
    _firstCardIndex = null;
    _secondCardIndex = null;
    _moves = 0;
    _matches = 0;
    _isProcessing = false;
  }

  void _resetGame() {
    setState(() {
      _initGame();
    });
  }

  void _onCardTap(int index) {
    // Prevent tapping if we're processing a match/mismatch or if card is already flipped/matched
    if (_isProcessing || _flipped[index] || _matched[index]) {
      return;
    }

    // Flip the card
    setState(() {
      _flipped[index] = true;
    });
    
    _flipController.reset();
    _flipController.forward();

    // Check if this is the first or second card flipped
    if (_firstCardIndex == null) {
      _firstCardIndex = index;
    } else {
      _secondCardIndex = index;
      _moves++;
      _isProcessing = true;
      
      // Check for a match
      if (_cards[_firstCardIndex!] == _cards[index]) {
        // We have a match!
        _processMatch();
      } else {
        // No match, flip cards back
        _processMismatch();
      }
    }
  }

  void _processMatch() {
    Timer(const Duration(milliseconds: 300), () {
      setState(() {
        _matched[_firstCardIndex!] = true;
        _matched[_secondCardIndex!] = true;
        _matches++;
        _resetFlippedCards();
      });
      
      // Check if game is complete
      if (_matches == _icons.length ~/ 2) {
        _showGameCompleteDialog();
      }
    });
  }

  void _processMismatch() {
    // Shake the cards to indicate a mismatch
    _shakeController.forward().then((_) => _shakeController.reverse());
    
    Timer(const Duration(milliseconds: 1000), () {
      setState(() {
        _flipped[_firstCardIndex!] = false;
        _flipped[_secondCardIndex!] = false;
        _resetFlippedCards();
      });
    });
  }

  void _resetFlippedCards() {
    _firstCardIndex = null;
    _secondCardIndex = null;
    _isProcessing = false;
  }

  void _showGameCompleteDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Congratulations!'),
          content: Text('You completed the game in $_moves moves!'),
          actions: <Widget>[
            TextButton(
              child: const Text('Play Again'),
              onPressed: () {
                Navigator.of(context).pop();
                _resetGame();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildCard(int index) {
    return GestureDetector(
      onTap: () => _onCardTap(index),
      child: AnimatedBuilder(
        animation: _shakeController,
        builder: (context, child) {
          double shake = _firstCardIndex == index || _secondCardIndex == index 
              ? sin(_shakeController.value * pi * 5) * 5
              : 0;
          return Transform.translate(
            offset: Offset(shake, 0),
            child: child,
          );
        },
        child: AnimatedBuilder(
          animation: _flipAnimation,
          builder: (context, child) {
            double flip = _flipped[index] ? _flipAnimation.value : 0;
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(flip * pi),
              child: flip < 0.5
                ? Card(
                    elevation: 4,
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text('?', style: TextStyle(
                        fontSize: 40, 
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )),
                    ),
                  )
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(pi),
                    child: Card(
                      elevation: 4,
                      color: _matched[index] ? Colors.green[100] : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          _cards[index],
                          style: const TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                  ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memory Match Game'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _resetGame,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Moves: $_moves', style: const TextStyle(fontSize: 18)),
                Text('Matches: $_matches/${_icons.length ~/ 2}', style: const TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: _cards.length,
                itemBuilder: (context, index) {
                  return _buildCard(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}