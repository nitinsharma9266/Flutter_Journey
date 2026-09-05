import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row Widget",
      home: Scaffold(
        backgroundColor: Colors.black12,

        body: Center(
          child: Container(
            width: 350,
            height: 120,
            color: Colors.white,

            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.orange,
                  child: const Icon(
                    Icons.fastfood,
                    size: 40,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(width: 20),

                const Text(
                  "Burger",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),

                const SizedBox(width: 20),

                const Text(
                  "₹199",
                  style: TextStyle(fontSize: 22, color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
