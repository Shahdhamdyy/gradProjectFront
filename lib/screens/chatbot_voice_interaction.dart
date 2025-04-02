import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VoiceInteractionScreen(),
    );
  }
}
class VoiceInteractionScreen extends StatelessWidget {
  const VoiceInteractionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black54),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Neura',
          style: TextStyle(
            fontFamily: 'Onest',
            fontSize: 24,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Robot Avatar with Border
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown, width: 3),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/chatbot.png', // Replace with your robot image path
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(height: 40),
            // Waveform (Static Design for now)
            const Icon(
              Icons
                  .multitrack_audio, // Replace with a waveform graphic if needed
              color: Colors.brown,
              size: 50,
            ),
            const SizedBox(height: 40),
            // Microphone Icon
            IconButton(
              icon: const Icon(Icons.mic, color: Colors.brown, size: 50),
              onPressed: () {
                // Handle voice input API integration
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder for Gemini API request
Future<String> fetchChatResponse(String userInput) async {
  // Replace with your API integration logic
  // Make a POST request to the Gemini API endpoint
  // Example:
  // final response = await http.post(
  //   Uri.parse('https://gemini-api.example.com/chat'),
  //   headers: {'Content-Type': 'application/json'},
  //   body: jsonEncode({'message': userInput}),
  // );

  // Mocked response for testing
  return Future.delayed(
    const Duration(seconds: 1),
    () => "This is a response from Gemini",
  );
}
