import 'package:flutter/material.dart';

class RowCrossAxisAlignmentWidget extends StatelessWidget {
  const RowCrossAxisAlignmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row Cross Axis Alignment",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,

        body: Center(
          child: Container(
            width: 350,
            height: 250,
            color: Colors.white,

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 35,
                  ),
                ),

                const SizedBox(width: 20),

                Container(
                  width: 80,
                  height: 150,
                  color: Colors.green,
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 35,
                  ),
                ),

                const SizedBox(width: 20),

                Container(
                  width: 80,
                  height: 100,
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