import 'package:flutter/material.dart';
import 'package:mindmedfinal/screens/homapage.dart';
import 'chatbot_chat.dart';



// Screen 1: Welcome Screen
class ChatbotIntro extends StatelessWidget {
  const ChatbotIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new , color: Colors.black54),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        title: const Text(
          'MindMed',
          style: TextStyle(
            fontFamily: 'Onest',
            fontSize: 24,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle : true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Enlarged Robot Image (without blue border)
          Center(
            child: Image.asset(
              'assets/images/chatbot.png', // Replace with your robot image path
              width: 330, // Increased size
              height: 330,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Hola, I’m Neura',
           style: TextStyle(
              fontFamily: 'Onest',
              fontSize: 29,
              color: Color(0xFF6C635D),
            ),
          ),
          const Spacer(),
          // Updated Get Started Button
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 70), // Adjusted width
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEAE6E3), // Fixed primary color
                foregroundColor: Colors.white, // Fixed onPrimary color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Onest',
                      fontSize: 29,
                      color: Color(0xFF6C635D),
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.arrow_forward_ios_outlined ,color: Color(0xFF6C635D),),
                ],
              ),
            ),
          ),
          const SizedBox(height: 120), // Adjusted button position
        ],
      ),
    );
  }
}
