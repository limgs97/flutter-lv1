import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://blog.codefactory.ai';

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Code Factory'
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // http://
              // https://
              if(controller == null) {
                return;
              }
              controller!.loadUrl(homeUrl);
            },
          ),
        ],
      ),
      body: WebView(
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
