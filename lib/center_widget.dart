
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Center Widget "),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.cyan,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(30),
            child: Center(
              child: Text(
                "This is a Container",
                style: TextStyle(
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