import 'dart:io';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("Button Widget"),
       ),
       // body: TextButton(
       //   child: Text("click here!"),
       //   onPressed: (){
       //     print("Text Button Terminated");
       //   },
       // ),

       // body: ElevatedButton(
       //      child: Text("click here!"),
       //      onPressed: (){
       //        print("Elevated Button Terminated");
       //      },
       //      onLongPress: (){
       //        print("Long Pressed!");
       //      },
       //     ),

       body: OutlinedButton(
           child: Text("click here!"),
           onPressed: (){
             stdout.write("outlined Button Terminated");
           },
         ),
     ),
   );
  }
}