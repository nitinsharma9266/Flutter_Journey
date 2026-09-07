import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Example"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Flexible(
              child: Container(
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Product Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 10),

            Flexible(
              child: Container(
                height: 100,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Price ₹999",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}