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


// =====================================================
// PREVIOUS WIDGETS — COMPLETED
// =====================================================


// ==================== WRAP ====================

// class WrapExample extends StatelessWidget {
//   const WrapExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Wrap(
//           spacing: 10,
//           runSpacing: 10,
//           children: [
//             Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 15,
//                 vertical: 10,
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: const Text(
//                 "Flutter",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// ==================== STACK ====================

// Stack widget completed


// ==================== POSITIONED ====================

// Positioned widget completed


// ==================== FLEXIBLE ====================

// Flexible widget completed


// ==================== SPACER ====================

// Spacer widget completed