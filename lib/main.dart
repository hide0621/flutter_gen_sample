import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Display PNG Image'),
        ),
        body: Center(
          child: Image.asset('assets/images/check_mark.png'),
        ),
      ),
    );
  }
}
