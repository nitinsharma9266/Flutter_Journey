import 'package:flutter/material.dart';


class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Align Widget",
      home: Scaffold(
        backgroundColor:Colors.black12,
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.black,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Alignment Flutter",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}