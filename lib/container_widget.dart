import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        width: 200,
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text("Hello Flutter"),
      ),
    );
  }
}