import 'package:flutter/material.dart';

class RestaurantDetails extends StatelessWidget {
  final String name;
  final String image;
  final String rating;
  final String time;
  final String category;

  const RestaurantDetails({
    super.key,
    required this.name,
    required this.image,
    required this.rating,
    required this.time,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Restaurant Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.network(
                image,
                height: 240,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    height: 240,
                    child: Center(
                      child: Icon(
                        Icons.image_not_supported,
                        size: 50,
                      ),
                    ),
                  );
                },
              ),
            ),

            // Restaurant Information
            Padding(
              padding: const EdgeInsets.all(16),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Name
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Rating + Time
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 22,
                      ),

                      const SizedBox(width: 5),

                      Text(
                        rating,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(width: 10),

                      const Text(
                        "•",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(width: 10),

                      const Icon(
                        Icons.access_time,
                        size: 20,
                        color: Colors.grey,
                      ),

                      const SizedBox(width: 5),

                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  // Category
                  Text(
                    category,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Divider(),

                  const SizedBox(height: 15),

                  // About
                  const Text(
                    "About Restaurant",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Enjoy delicious food prepared with fresh "
                        "ingredients and great taste. Order your "
                        "favourite food and enjoy it at your doorstep.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Popular Dishes
                  const Text(
                    "Popular Dishes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const DishCard(
                    name: "Special Pizza",
                    price: "₹199",
                    icon: Icons.local_pizza,
                  ),

                  const DishCard(
                    name: "Cheese Burger",
                    price: "₹149",
                    icon: Icons.lunch_dining,
                  ),

                  const DishCard(
                    name: "Special Biryani",
                    price: "₹249",
                    icon: Icons.ramen_dining,
                  ),

                  const SizedBox(height: 25),

                  // Order Button
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "$name - Order button pressed",
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        "Order Now",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Dish Card
class DishCard extends StatelessWidget {
  final String name;
  final String price;
  final IconData icon;

  const DishCard({
    super.key,
    required this.name,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(icon),
        ),

        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        trailing: Text(
          price,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}