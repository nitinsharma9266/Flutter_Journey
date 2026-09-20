import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text(
              "Hello Flutter",
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }
}