import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Select_Page extends StatefulWidget {
  final String link;
  const Select_Page({Key? key, required this.link}) : super(key: key);

  @override
  State<Select_Page> createState() => _Select_PageState();
}

class _Select_PageState extends State<Select_Page> {
  late InAppWebViewController myWeb;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            if (await myWeb.canGoBack()) {
              myWeb.goBack();
              return false;
            } else {
              return true;
            }
          },
          child: InAppWebView(
            onWebViewCreated: (controller) async {
              myWeb = controller;
            },
            initialUrlRequest: URLRequest(
              url: Uri.parse(widget.link),
            ),
          ),
        ),
      ),
    );
  }
}
