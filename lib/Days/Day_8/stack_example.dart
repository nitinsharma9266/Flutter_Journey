import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Example"),
      ),

      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.blue,
            ),

            // const Icon(
            //   Icons.favorite,
            //   size: 50,
            //   color: Colors.red,
            // ),
            Positioned(
              top: 10,
              right: 10,
              child: const Icon(
                Icons.favorite,
                size: 40,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}