import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  bool _isLoading = false;

  Future<String> getAIResponse(String userInput) async {
    const url = 'https://openrouter.ai/api/v1/chat/completions';
    final client = http.Client();
    
    try {
      final response = await client.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer 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',
          'HTTP-Referer': 'http://localhost',
          'X-Title': 'Flutter Chat App',
          'OpenAI-Organization': 'openrouter',
          'Accept': 'application/json',
          'User-Agent': 'Flutter/1.0'
        },
        body: jsonEncode({
          "model": "deepseek/deepseek-chat-v3-0324:free",
          "messages": [
            {"role": "system", "content": "You are a helpful personal assistant."},
            {"role": "user", "content": userInput}
          ],
          "temperature": 0.7,
          "max_tokens": 2000,
          "top_p": 1,
          "stream": false
        }),
      ).timeout(
        Duration(seconds: 30),
        onTimeout: () {
          throw TimeoutException('The request timed out');
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['choices'][0]['message']['content'];
      } else {
        print('Error: ${response.statusCode}');
        print('Response body: ${response.body}');
        if (response.statusCode == 429) {
          return "The service is currently busy. Please try again in a moment.";
        }
        return "Error ${response.statusCode}: ${_getErrorMessage(response.statusCode)}";
      }
    } on TimeoutException {
      return "Request timed out. Please check your internet connection and try again.";
    } on http.ClientException catch (e) {
      print('ClientException occurred: $e');
      return "Network error. Please check your internet connection and try again.";
    } catch (e) {
      print('Exception occurred: $e');
      return "An unexpected error occurred. Please try again.";
    } finally {
      client.close();
    }
  }

  String _getErrorMessage(int statusCode) {
    switch (statusCode) {
      case 401:
        return "Authentication failed. Please check API key.";
      case 403:
        return "Access forbidden. Please check API permissions.";
      case 404:
        return "Service not found. Please check the API endpoint.";
      case 500:
        return "Server error. Please try again later.";
      case 502:
        return "Bad gateway. Please try again later.";
      case 503:
        return "Service unavailable. Please try again later.";
      default:
        return "An error occurred. Please try again.";
    }
  }

  void _sendMessage() async {
    final userInput = _controller.text.trim();
    if (userInput.isEmpty) return;

    setState(() {
      _messages.add({'sender': 'user', 'message': userInput});
      _isLoading = true;
      _controller.clear();
    });

    try {
      final response = await getAIResponse(userInput);
      setState(() {
        _messages.add({'sender': 'bot', 'message': response});
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _messages.add({'sender': 'bot', 'message': 'An error occurred. Please try again.'});
        _isLoading = false;
      });
    }
  }

  Widget _buildMessage(Map<String, String> msg) {
    final isUser = msg['sender'] == 'user';
    return Container(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          color: isUser ? Colors.blueAccent : Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(12),
        child: Text(
          msg['message']!,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AI Chat Assistant"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: _messages.length,
              itemBuilder: (_, index) => _buildMessage(_messages[index]),
            ),
          ),
          if (_isLoading)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Type your message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                SizedBox(width: 8),
                FloatingActionButton(
                  onPressed: _sendMessage,
                  child: Icon(Icons.send),
                  backgroundColor: Colors.blueAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
