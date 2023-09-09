import 'package:flutter/material.dart';
import 'package:hngx_mobile_task1/github_webview.dart';
import 'package:hngx_mobile_task1/profile_screeen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: (width / 2),
                  child: CircleAvatar(
                      radius: (width / 2) - 10,
                      child: Image.asset('asset/profile_picture.jpeg')),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Daniel Nyorere",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            ElevatedButton(
              child: const Text("Github Profile"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GitHubWebView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
