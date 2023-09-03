import 'package:flutter/material.dart';
import 'package:instgram_clone/constant/Theme.dart';
import 'package:instgram_clone/screens/home_screen.dart';

void main() {
  runApp(const InstagramCloneApp());
}

class InstagramCloneApp extends StatelessWidget {
  const InstagramCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(),
      home: HomeScreen(),
    );
  }

}
