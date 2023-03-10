import 'package:flutter/material.dart';
import 'package:ott_platform/views/screens/home.dart';

void main() {
  runApp(
    const OttPlatform(),
  );
}

class OttPlatform extends StatefulWidget {
  const OttPlatform({Key? key}) : super(key: key);

  @override
  State<OttPlatform> createState() => _OttPlatformState();
}

class _OttPlatformState extends State<OttPlatform> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
