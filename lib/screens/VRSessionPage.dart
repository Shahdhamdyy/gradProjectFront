import 'package:flutter/material.dart';
import 'meditation_player.dart';

class VRSessionPage extends StatelessWidget {
  final String category;

  const VRSessionPage({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF7D624F)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              "Enjoy with the VR session and relax",
              style: TextStyle(
                color: Color(0xFF7D624F),
                fontFamily: 'Gayathri',
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          Image.asset(
            'assets/images/vr_image.png', // Replace with your VR users image
            width: 250,
            height: 250,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Add backend logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF7D624F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
            ),
            child: const Text(
              'End Session',
              style: TextStyle(
                fontFamily: 'Onest',
                fontSize: 29,
                color: Color(0xFFEAE6E3),
              ),
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MeditationPlayerPage(),
                ),
              );
            },
            child: const Text(
              "Don’t have a VR glass? get an alternative choice",
              style: TextStyle(
                color: Color(0xFF7D624F),
                fontFamily: 'Gayathri',
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

