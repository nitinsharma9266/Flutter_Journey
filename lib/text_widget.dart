import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          
          child: Text(
            "Hello NITIN",
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              
            ),
          ),
        ),
      ),
    );
  }
}