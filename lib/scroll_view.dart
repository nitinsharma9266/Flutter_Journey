import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scroll View",
      home: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.lightGreenAccent,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.indigo,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.brown,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.pinkAccent,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.tealAccent,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.purple,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.cyan,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.purpleAccent,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.blueGrey,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.greenAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.lightGreen,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.yellow,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.pinkAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
