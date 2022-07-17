import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  final String title;
  final String selectedUrl;

  MyWebView({
    required this.title,
    required this.selectedUrl,
  });

  @override
  State<MyWebView> createState() => MyWebViewstate(title, selectedUrl);
}

class MyWebViewstate extends State<MyWebView> {
  late final String title;
  late final String selectedUrl;
  bool isLoading = true;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  MyWebViewstate(String title, String selectedUrl) {
    this.title = title;
    this.selectedUrl = selectedUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueGrey.shade300,
      ),
      body: Stack(children: [
        WebView(
          gestureNavigationEnabled: true,
          initialUrl: selectedUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onPageStarted: (finish) {
            setState(() {
              isLoading = false;
            });
          },
        ),
        isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Stack(),
      ]),
    );
  }
}
