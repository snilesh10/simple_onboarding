import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Shop Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      home: OnboardingScreens(),
    );
  }
}
