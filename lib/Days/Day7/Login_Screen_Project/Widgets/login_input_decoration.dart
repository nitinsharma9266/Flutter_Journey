import 'package:flutter/material.dart';

class LoginInputDecoration extends StatelessWidget {
  const LoginInputDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter your email",
              labelText: "Email",
              prefixIcon: const Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}