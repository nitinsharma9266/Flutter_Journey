import 'package:flutter/material.dart';

class PracticeQuestions extends StatelessWidget {
  const PracticeQuestions({super.key});
// =============Profile Screen=================
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text("My Profile"),
  //       centerTitle: true,
  //       backgroundColor: Colors.blue,
  //       foregroundColor: Colors.white,
  //     ),
  //
  //     body: SingleChildScrollView(
  //       child: Center(
  //         child: Card(
  //           margin: const EdgeInsets.all(16),
  //           elevation: 5,
  //           child: Padding(
  //             padding: const EdgeInsets.all(20),
  //
  //             child: Column(
  //               children: [
  //                 // Profile Image
  //                 const CircleAvatar(
  //                   radius: 80,
  //                   backgroundImage: NetworkImage(
  //                     "https://images.unsplash.com/photo-1505740420928-5e560c06d30e"
  //                     "?auto=format&fit=crop&w=800&q=80",
  //                   ),
  //                 ),
  //
  //                 const SizedBox(height: 15),
  //
  //                 // Name
  //                 const Text(
  //                   "Nitin Sharma",
  //                   style: TextStyle(
  //                     fontSize: 24,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //
  //                 const SizedBox(height: 8),
  //
  //                 // Profession
  //                 const Text(
  //                   "Flutter Developer",
  //                   style: TextStyle(
  //                     fontSize: 17,
  //                     color: Colors.grey,
  //                   ),
  //                 ),
  //
  //                 const SizedBox(height: 20),
  //
  //                 const Divider(
  //                   thickness: 1,
  //                 ),
  //
  //                 const SizedBox(height: 15),
  //
  //                 // Email Row
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     const Text(
  //                       "Email",
  //                       style: TextStyle(
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.bold,
  //                       ),
  //                     ),
  //
  //                     Flexible(
  //                       child: Text(
  //                         "nitinsharma926614@gmail.com",
  //                         textAlign: TextAlign.right,
  //                         style: TextStyle(
  //                           fontSize: 14,
  //                           color: Colors.grey[600],
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //
  //                 const SizedBox(height: 15),
  //
  //                 // Skills Row
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     const Text(
  //                       "Skills",
  //                       style: TextStyle(
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.bold,
  //                       ),
  //                     ),
  //
  //                     Flexible(
  //                       child: Text(
  //                         "Flutter, Dart, Python",
  //                         textAlign: TextAlign.right,
  //                         style: TextStyle(
  //                           fontSize: 14,
  //                           color: Colors.grey[600],
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //
  //                 const SizedBox(height: 15),
  //
  //                 // Experience Row
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     const Text(
  //                       "Experience",
  //                       style: TextStyle(
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.bold,
  //                       ),
  //                     ),
  //
  //                     Text(
  //                       "Fresher",
  //                       style: TextStyle(
  //                         fontSize: 14,
  //                         color: Colors.grey[600],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //
  //                 const SizedBox(height: 20),
  //
  //                 const Divider(
  //                   thickness: 1,
  //                 ),
  //
  //                 const SizedBox(height: 15),
  //
  //                 // Buttons
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     OutlinedButton(
  //                       onPressed: () {
  //                         print("Edit Profile clicked");
  //                       },
  //                       child: const Text("Edit Profile"),
  //                     ),
  //
  //                     const SizedBox(width: 15),
  //
  //                     ElevatedButton(
  //                       onPressed: () {
  //                         print("Follow clicked");
  //                       },
  //                       style: ElevatedButton.styleFrom(
  //                         backgroundColor: Colors.blue,
  //                         foregroundColor: Colors.white,
  //                       ),
  //                       child: const Text("Follow"),
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Delivery App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),

                child:Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 30,
                    ),
                     const Text(
                       "Deliver to ",

                     style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.normal,

                     ),
                     ),
                     const SizedBox(height: 10,),
                      const Text(
                       "Kesvan , Hardoi",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.normal,

                       ),
                     ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  }

}