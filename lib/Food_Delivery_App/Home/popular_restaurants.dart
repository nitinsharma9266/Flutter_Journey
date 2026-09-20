import 'package:flutter/material.dart';

import '../Restaurants/restaurant_details.dart';

class PopularRestaurants extends StatelessWidget {
  const PopularRestaurants({super.key});

  @override
  Widget build(BuildContext context) {

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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

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

          itemCount: restaurants.length,

          itemBuilder: (context, index) {

            return Card(
              elevation: 5,

              margin: const EdgeInsets.only(
                bottom: 12,
              ),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RestaurantDetails(
                        name: restaurants[index]["name"]!,
                        image: restaurants[index]["image"]!,
                        rating: restaurants[index]["rating"]!,
                        time: restaurants[index]["time"]!,
                        category: restaurants[index]["category"]!,
                      ),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),

                      child: Image.network(
                        restaurants[index]["image"]!,

                        height: 160,
                        width: double.infinity,

                        fit: BoxFit.cover,

                        errorBuilder:
                            (context, error, stackTrace) {
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

                    Padding(
                      padding: const EdgeInsets.all(12),

                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

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
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(width: 8),

                              Text(
                                "• ${restaurants[index]["time"]!}",
                                style: const TextStyle(
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
              ),
            );
          },
        ),
      ],
    );
  }
}