import 'package:flutter/material.dart';

class RowMainAxisAlignmentWidget extends StatelessWidget {
  const RowMainAxisAlignmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row Main Axis Alignment",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,

        body: Center(
          child: Container(
            width: 350,
            height: 120,
            color: Colors.white,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.red,
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 35,
                  ),
                ),

                Container(
                  width: 70,
                  height: 70,
                  color: Colors.green,
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 35,
                  ),
                ),

                Container(
                  width: 70,
                  height: 70,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}