import 'package:flutter/material.dart';

class ColumnVerticalDirectionWidget extends StatelessWidget {
  const ColumnVerticalDirectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Column Vertical Direction",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column Vertical Direction"),
          backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
            child: Column(
                verticalDirection: VerticalDirection.up,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Hello Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                ),
              ),
              ),
            ],

              ),
          ),
        ),
      ),
      ),
    );
  }
}