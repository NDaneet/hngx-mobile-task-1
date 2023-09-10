import 'package:flutter/material.dart';
import 'package:hngx_mobile_task1/profile_screeen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ProfileScreen(),
      ),
    );
  }
}
