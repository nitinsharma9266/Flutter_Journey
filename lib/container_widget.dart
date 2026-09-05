import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Container"),
        ),
        body: Center(
          child: Container(

            width: 200,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text("Hello Flutter Journey"),
          ),
        ),
      ),
    );
  }


}