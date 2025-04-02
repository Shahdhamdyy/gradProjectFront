// import 'package:flutter/material.dart';
// // import 'package:mindmeddd/screens/meditation_intro.dart';
// import 'package:mindmeddd/screens/meditation_category.dart';
// import 'package:mindmeddd/screens/questionaire.dart'; // Import the QuestionnairePage
// import 'package:mindmeddd/screens/journal_intro.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const JournalingPage(),
//       routes: {
//         '/meditation_category': (context) => const MeditationCategoryPage(),
//         '/questionnaire': (context) =>
//             const QuestionnairePage(), // Add the route for QuestionnairePage
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';

// import 'package:mindmeddd/screens/homepage.dart';
import 'package:mindmedfinal/screens/meditation_category.dart';
import 'package:mindmedfinal/screens/questionaire.dart';
import 'package:mindmedfinal/screens/splash_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/meditation_category': (context) => const MeditationCategoryPage(),
        '/questionnaire': (context) =>
            const QuestionnairePage(), // Add the route for QuestionnairePage
      },
    );
  }
}
