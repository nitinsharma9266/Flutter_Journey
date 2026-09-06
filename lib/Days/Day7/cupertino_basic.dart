import 'package:flutter/cupertino.dart';

class CupertinoBasic extends StatelessWidget {
  const CupertinoBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoHomeScreen(),
    );
  }
}

class CupertinoHomeScreen extends StatelessWidget {
  const CupertinoHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Food App"),
      ),

      child: Center(
        child: CupertinoButton.filled(
          onPressed: () {
            print("Order button pressed");
          },
          child: const Text("Order Now"),
        ),
      ),
    );
  }
}