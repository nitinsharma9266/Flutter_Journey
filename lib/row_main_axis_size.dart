import 'package:flutter/material.dart';

class RowMainAxisSizeWidget extends StatelessWidget {
  const RowMainAxisSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row Main Axis Size",
      home: Scaffold(
        backgroundColor: Colors.black12,

        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Row with MainAxisSize.max
              Container(
                width: 350,
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.red,
                      child: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(width: 10),

                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.green,
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // Row with MainAxisSize.min
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.blue,
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(width: 10),

                    Container(
                      width: 70,
                      height: 70,
                      color: Colors.orange,
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}