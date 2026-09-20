import 'package:flutter/material.dart';

class PracticeQuestions extends StatelessWidget {
  const PracticeQuestions({super.key});

  get PaddingEdgeInsets => null;
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

          //Location Part

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

                child:Column(
                  children: [

                    // 📍 Location Row
                    Row(
                      children: [
                        const Icon(Icons.location_on),

                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Deliver to"),
                            Text("Kesvan, Hardoi"),
                          ],
                        ),

                        const Spacer(),

                        const Icon(Icons.notifications),
                      ],
                    ),

                    const SizedBox(height: 15),

                    const Divider(
                      thickness: 1,

                    ),

                    // 🔍 Search Bar — location ke neeche
                    Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                "Search restaurants or food",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),

                          Icon(
                            Icons.search,
                            color: Colors.blue,
                          ),

                          SizedBox(width: 12),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Divider(
                      thickness: 1,

                    ),

                    // OFFER BANNER

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),

                            // ❌ const Padding hata diya
                            child: Padding(
                              padding: const EdgeInsets.all(12),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  const Text(
                                    "50% OFF on First Order",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),

                                  const SizedBox(height: 5),

                                  const Text(
                                    "Order your favourite food",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),

                                  const Spacer(),

                                  // 🌈 Colorful Button
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Colors.blue,
                                          Colors.purple,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),

                                    child: ElevatedButton(
                                      onPressed: () {
                                        print("Order button pressed");
                                      },

                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        foregroundColor: Colors.white,

                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 10,
                                        ),

                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                      ),

                                      child: const Text(
                                        "Order",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(height: 15),


                    // CATEGORIES

                    const SizedBox(height: 20),

                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,

                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 1.2,
                      ),

                      itemBuilder: (context, index) {

                        final categories = [
                          ["Pizza", Icons.local_pizza],
                          ["Burger", Icons.lunch_dining],
                          ["Noodles", Icons.ramen_dining],
                          ["Cake", Icons.cake],
                          ["Salad", Icons.eco],
                          ["Coffee", Icons.coffee],
                        ];

                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Icon(
                                categories[index][1] as IconData,
                                size: 70,
                                color: Colors.blue,
                              ),

                              const SizedBox(height: 6),

                              Text(
                                categories[index][0] as String,
                                style: const TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 20),
                    const Divider(
                      thickness: 1,
                    ),


                    // Popular Restaurants

                    const SizedBox(height: 20),

                    const Text(
                      "Popular Restaurants",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 12),

                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,

                      itemBuilder: (BuildContext context, int index) {

                        final restaurants = [
                          {
                            "name": "Pizza Palace",
                            "image":
                            "https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=800&q=80",
                            "rating": "4.5",
                            "time": "25-30 min",
                            "category": "Pizza • Fast Food • Italian",
                          },

                          {
                            "name": "Burger House",
                            "image":
                            "https://images.unsplash.com/photo-1550547660-d9450f859349?auto=format&fit=crop&w=800&q=80",
                            "rating": "4.3",
                            "time": "20-25 min",
                            "category": "Burger • Fast Food",
                          },

                          {
                            "name": "Royal Biryani",
                            "image":
                            "https://images.unsplash.com/photo-1585937421612-70a008356fbe?auto=format&fit=crop&w=800&q=80",
                            "rating": "4.7",
                            "time": "30-35 min",
                            "category": "Biryani • Indian • Mughlai",
                          },
                        ];

                        return Card(
                          elevation: 5,
                          margin: const EdgeInsets.only(bottom: 12),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              // Restaurant Image
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(10),
                                ),

                                child: Image.network(
                                  restaurants[index]["image"]!,

                                  height: 160,
                                  width: double.infinity,
                                  fit: BoxFit.cover,

                                  errorBuilder: (context, error, stackTrace) {
                                    return const SizedBox(
                                      height: 160,
                                      child: Center(
                                        child: Icon(
                                          Icons.image_not_supported,
                                          size: 40,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),

                              // Restaurant Details
                              Padding(
                                padding: const EdgeInsets.all(12),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      restaurants[index]["name"]!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    const SizedBox(height: 6),

                                    Row(
                                      children: [

                                        const Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 20,
                                        ),

                                        const SizedBox(width: 5),

                                        Text(
                                          restaurants[index]["rating"]!,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        const SizedBox(width: 8),

                                        Text(
                                          "• ${restaurants[index]["time"]!}",
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 5),

                                    Text(
                                      restaurants[index]["category"]!,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),


                  ],
                )
              ),
            ),
          ),

        ),
      );




  }

}