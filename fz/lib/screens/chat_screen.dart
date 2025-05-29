import 'package:flutter/material.dart';
import 'package:flutter_ai_assistant/models/message.dart';
import 'package:flutter_ai_assistant/services/ai_service.dart';
import 'package:flutter_ai_assistant/services/speech_service.dart';
import 'package:flutter_ai_assistant/widgets/message_bubble.dart';
import 'package:flutter_ai_assistant/widgets/voice_button.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<Message> _messages = [];
  final AIService _aiService = AIService();
  final SpeechService _speechService = SpeechService();
  final ScrollController _scrollController = ScrollController();
  
  String _partialVoiceResult = '';
  bool _isSpeaking = false;
  
  @override
  void initState() {
    super.initState();
    _initializeServices();
    // Add welcome message
    _addBotMessage("Hello! I'm your AI assistant. How can I help you today?");
  }
  
  Future<void> _initializeServices() async {
    await _speechService.initializeTTS();
    await _speechService.initializeSTT();
  }
  
  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }
  
  void _handleSubmitted(String text) async {
    if (text.trim().isEmpty) return;
    
    _textController.clear();
    
    // Add user message
    setState(() {
      _messages.add(Message(text: text, isUserMessage: true));
    });
    _scrollToBottom();
    
    // Get response from AI
    final response = await _aiService.getResponse(text);
    
    // Add AI response
    _addBotMessage(response);
    
    // Speak the response
    await _speakResponse(response);
  }
  
  Future<void> _speakResponse(String text) async {
    setState(() {
      _isSpeaking = true;
    });
    
    await _speechService.speak(text);
    
    setState(() {
      _isSpeaking = false;
    });
  }
  
  void _addBotMessage(String text) {
    setState(() {
      _messages.add(Message(text: text, isUserMessage: false));
    });
    _scrollToBottom();
  }
  
  void _startListening() async {
    setState(() {
      _partialVoiceResult = 'Listening...';
    });
    
    await _speechService.startListening((result) {
      setState(() {
        _partialVoiceResult = result;
      });
    });
  }
  
  void _stopListening() async {
    await _speechService.stopListening();
    
    if (_partialVoiceResult.isNotEmpty && _partialVoiceResult != 'Listening...') {
      _handleSubmitted(_partialVoiceResult);
    }
    
    setState(() {
      _partialVoiceResult = '';
    });
  }
  
  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    _speechService.stopSpeaking();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Assistant'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: [
          if (_isSpeaking)
            IconButton(
              icon: const Icon(Icons.stop),
              onPressed: () {
                _speechService.stopSpeaking();
                setState(() {
                  _isSpeaking = false;
                });
              },
            ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(8.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return MessageBubble(message: _messages[index]);
              },
            ),
          ),
          if (_partialVoiceResult.isNotEmpty && _partialVoiceResult != 'Listening...')
            Container(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.centerLeft,
              child: Text(
                _partialVoiceResult,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, -1),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Send a message...',
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    onSubmitted: _handleSubmitted,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (_textController.text.trim().isNotEmpty) {
                      _handleSubmitted(_textController.text);
                    }
                  },
                ),
                const SizedBox(width: 8),
                VoiceButton(
                  onListening: _startListening,
                  onResult: _stopListening,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}