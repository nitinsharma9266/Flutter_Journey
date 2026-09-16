import 'package:flutter/material.dart';

class PracticeQuestions extends StatelessWidget {
  const PracticeQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Card(
                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.white,
                      // child: Image.network(
                      //
                      // ),
                      child: const CircleAvatar(
                        radius: 100,
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e"
                          "?auto=format&fit=crop&w=800&q=80",
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Nitin Sharma",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Flutter Developer",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 20),

                  ],
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}