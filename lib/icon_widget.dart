
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Icon(
          color: Colors.blueGrey,
          Icons.search,
          size: 50,
        ),
      ),
    );
  }
}