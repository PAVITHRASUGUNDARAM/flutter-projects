import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';

void main() {
  runApp(SmartAIApp());
}

class SmartAIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart AI Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ChatScreen(),
    );
  }
}
