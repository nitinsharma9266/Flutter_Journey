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
        body: Center(
          child: Image.network(
            "https://picsum.photos/id/237/600/400",
            width: 300,
            height: 200,
          ),
        ),
      ),
    );
  }
}