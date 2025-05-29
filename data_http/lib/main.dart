import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTTP API Client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List to store fetched data
  List<dynamic> _data = [];
  
  // Loading state
  bool _isLoading = false;
  
  // Error message
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP API Client'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // API Endpoints dropdown
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Select API Endpoint',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'posts', child: Text('Posts')),
                DropdownMenuItem(value: 'users', child: Text('Users')),
                DropdownMenuItem(value: 'comments', child: Text('Comments')),
              ],
              onChanged: (value) {
                if (value != null) {
                  _fetchData(value);
                }
              },
            ),
            
            const SizedBox(height: 20),
            
            // Fetch button
            ElevatedButton(
              onPressed: () => _fetchData('posts'),
              child: const Text('Fetch Posts'),
            ),
            
            const SizedBox(height: 20),
            
            // Loading indicator or error message
            if (_isLoading)
              const Center(child: CircularProgressIndicator())
            else if (_errorMessage != null)
              Center(
                child: Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            
            const SizedBox(height: 10),
            
            // Data display
            Expanded(
              child: _data.isEmpty && !_isLoading && _errorMessage == null
                ? const Center(child: Text('No data to display. Select an endpoint or press Fetch.'))
                : ListView.builder(
                    itemCount: _data.length,
                    itemBuilder: (context, index) {
                      final item = _data[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          title: Text(
                            item['title'] ?? item['name'] ?? 'No title',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            item['body'] ?? item['email'] ?? 'No description',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () => _showDetailDialog(item),
                        ),
                      );
                    },
                  ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to fetch data from the API
  Future<void> _fetchData(String endpoint) async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      // Using JSONPlaceholder as a sample API
      final url = Uri.parse('https://jsonplaceholder.typicode.com/$endpoint');
      final response = await http.get(url);
      
      if (response.statusCode == 200) {
        final decodedData = json.decode(response.body);
        setState(() {
          _data = decodedData;
          _isLoading = false;
        });
      } else {
        setState(() {
          _errorMessage = 'Failed to load data: ${response.statusCode}';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Error: ${e.toString()}';
        _isLoading = false;
      });
    }
  }

  // Function to show detail dialog
  void _showDetailDialog(Map<String, dynamic> item) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(item['title'] ?? item['name'] ?? 'Details'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: item.entries
                .map((entry) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${entry.key}:',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          Text(entry.value.toString()),
                          const Divider(),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

// Model classes for typed data (optional but recommended for more complex apps)
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class User {
  final int id;
  final String name;
  final String username;
  final String email;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
    );
  }
}