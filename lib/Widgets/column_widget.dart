// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Column Widget",
//       home: Scaffold(
//         backgroundColor: Colors.black12,
//         body: Center(
//           child: Column(
//             children: [
//               Text(
//                 "Hello Flutter",
//                 style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.blue,
//                 ),
//               ),
//
//               Icon(
//                 Icons.star,
//                 size: 50,
//                 color: Colors.yellow,
//               ),
//
//               Text(
//                 "Welcome",
//                 style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.green,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Column Alignment",
      home: Scaffold(
        backgroundColor: Colors.black12,

        body: Column(
          children: [

            // 1. START
            Expanded(
              child: Container(
                // color: Colors.red.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("START"),
                    Icon(Icons.star),
                  ],
                ),
              ),
            ),

            // 2. CENTER
            // Expanded(
            //   child: Container(
            //     // color: Colors.blue.shade100,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: const [
            //         Text("CENTER"),
            //         Icon(Icons.star),
            //       ],
            //     ),
            //   ),
            // ),

            // 3. END
            // Expanded(
            //   child: Container(
            //     color: Colors.green.shade100,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.end,
            //       children: const [
            //         Text("END"),
            //         Icon(Icons.star),
            //       ],
            //     ),
            //   ),
            // ),

            // 4. SPACE BETWEEN
            // Expanded(
            //   child: Container(
            //     color: Colors.yellow.shade100,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: const [
            //         Text("SPACE BETWEEN"),
            //         Icon(Icons.star),
            //         Text("BOTTOM"),
            //       ],
            //     ),
            //   ),
            // ),

            // 5. SPACE AROUND
            // Expanded(
            //   child: Container(
            //     color: Colors.orange.shade100,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: const [
            //         Text("SPACE AROUND"),
            //         Icon(Icons.star),
            //         Text("BOTTOM"),
            //       ],
            //     ),
            //   ),
            // ),

            // 6. SPACE EVENLY
            // Expanded(
            //   child: Container(
            //     color: Colors.purple.shade100,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: const [
            //         Text("SPACE EVENLY"),
            //         Icon(Icons.star),
            //         Text("BOTTOM"),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}