import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubWebView extends StatefulWidget {
  const GitHubWebView({super.key});

  @override
  State<GitHubWebView> createState() => _GitHubWebViewState();
}

class _GitHubWebViewState extends State<GitHubWebView> {
  WebViewController controller = WebViewController();

  @override
  void initState() {
    super.initState();
    controller.loadRequest(
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
      body: WebViewWidget(controller: controller),
    );
  }
}
