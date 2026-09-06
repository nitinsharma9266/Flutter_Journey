import 'package:flutter/material.dart';

class StatefulBasic extends StatelessWidget {
  const StatefulBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
      title: "Counter Basic App",
      debugShowCheckedModeBanner: false,

    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() {
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text(
              "$count",
              style: const TextStyle(
                fontSize: 40,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                if(count<=50){
                  setState(() {
                    count++;
                  });
                }
                else{

                  print("Maximum value reached");
                }

              },
              child: const Text("Increase"),
            ),
          ],
        ),
      ),
    );
  }
}