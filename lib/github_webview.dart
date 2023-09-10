import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubWebView extends StatefulWidget {
  const GitHubWebView({super.key});

  @override
  State<GitHubWebView> createState() => _GitHubWebViewState();
}

class _GitHubWebViewState extends State<GitHubWebView> {
  int loadingPercentage = 0;
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..loadRequest(
        Uri.parse("https://www.github.com/NDaneet"),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("GitHub Profile"),
      ),
      body: loadingPercentage < 100
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(
                    backgroundColor: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('$loadingPercentage%',)
                ],
              ),
            )
          : WebViewWidget(controller: controller),
    );
  }
}
