import 'package:flutter/material.dart';

class WidgetPractice extends StatelessWidget {
  const WidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Example"),
      ),

      body: Card(
        elevation: 5,
        margin: const EdgeInsets.all(20),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),

        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // Product Name
              const Text(
                "iPhone 15",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              // Product Description
              const Text(
                "Latest Apple Smartphone",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 10),

              // Rating
              const Text(
                "⭐ 4.5",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 10),

              // Price
              const Text(
                "₹69,999",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              // Discount
              const Text(
                "20% OFF",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Buy Button
              ElevatedButton(
                onPressed: () {},
                child: const Text("Buy Now"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==============Wrap Example==============
/*
import 'package:flutter/material.dart';

class WidgetPractice extends StatelessWidget {
  const WidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Example"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Wrap(
          spacing: 10,
          runSpacing: 10,

          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Dart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Firebase",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Android",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "iOS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "UI Design",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// =====================================================
// PREVIOUS WIDGETS — COMPLETED
// =====================================================


// ==================== STACK ====================

// class StackExample extends StatelessWidget {
//   const StackExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Stack(
//           children: [
//             Container(
//               width: 300,
//               height: 200,
//               color: Colors.blue,
//             ),
//             const Icon(
//               Icons.favorite,
//               size: 50,
//               color: Colors.red,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// ==================== POSITIONED ====================

// class PositionedExample extends StatelessWidget {
//   const PositionedExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Stack(
//           children: [
//             Container(
//               width: 300,
//               height: 200,
//               color: Colors.blue,
//             ),
//             Positioned(
//               top: 10,
//               right: 10,
//               child: const Icon(
//                 Icons.favorite,
//                 size: 40,
//                 color: Colors.red,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// ==================== FLEXIBLE ====================

// class FlexibleExample extends StatelessWidget {
//   const FlexibleExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Row(
//           children: [
//             Flexible(
//               child: Container(
//                 height: 100,
//                 color: Colors.blue,
//                 child: const Center(
//                   child: Text(
//                     "Product Name",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(width: 10),
//             Flexible(
//               child: Container(
//                 height: 100,
//                 color: Colors.green,
//                 child: const Center(
//                   child: Text(
//                     "Price ₹999",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// ==================== SPACER ====================

// class SpacerExample extends StatelessWidget {
//   const SpacerExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Row(
//           children: [
//             const Text(
//               "Amazon",
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const Spacer(),
//             const Icon(Icons.search),
//             const SizedBox(width: 15),
//             const Icon(Icons.shopping_cart),
//           ],
//         ),
//       ),
//     );
//   }
// }
 */