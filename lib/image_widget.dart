import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

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