import 'package:google_generative_ai/google_generative_ai.dart';

class AIService {
  late final GenerativeModel _model;
  
  AIService() {
    _model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: 'AIzaSyCzG4kwmnBsrbWiZtE_Yo2Rqj6B5PD0jtE',
    );
  }

  Future<String> getResponse(String userInput) async {
    try {
      final content = [Content.text(userInput)];
      final response = await _model.generateContent(content);
      final text = response.text;
      return text ?? "I couldn't generate a response. Please try again.";
    } catch (e) {
      print('Error in AI Service: $e'); // For debugging
      return "Sorry, I encountered an error. Please try again later.";
    }
  }
}