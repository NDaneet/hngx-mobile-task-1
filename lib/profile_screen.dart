import 'package:flutter/material.dart';
import 'package:hngx_mobile_task1/github_webview.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  final double largeCircleRadius = 200;
  final double smallCircleRadius = 100;
  final double largeTextSize = 50;
  final double smallTextSize = 30;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isScreenLarge = screenWidth > 500;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: isScreenLarge ? largeCircleRadius : smallCircleRadius,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: isScreenLarge
                        ? largeCircleRadius - 10
                        : smallCircleRadius - 5,
                    backgroundImage:
                        const AssetImage('asset/profile_picture.jpeg'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Daniel Nyorere",
                  style: TextStyle(
                      fontSize: isScreenLarge ? largeTextSize : smallTextSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              width: isScreenLarge ? screenWidth / 4 : screenWidth / 2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const Text("Open GitHub"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GitHubWebView(),
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
}
