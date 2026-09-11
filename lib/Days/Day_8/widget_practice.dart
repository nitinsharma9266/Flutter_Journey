import 'package:flutter/material.dart';

//===========ListView==========
class WidgetPractice extends StatelessWidget {
  const WidgetPractice({super.key});

  // Product data
  final List<Map<String, dynamic>> products = const [
    {
      "name": "Wireless Headphones",
      "price": "₹1,499",
      "icon": Icons.headphones,
      "color": Colors.blue,
    },
    {
      "name": "Smart Watch",
      "price": "₹2,999",
      "icon": Icons.watch,
      "color": Colors.orange,
    },
    {
      "name": "Running Shoes",
      "price": "₹1,999",
      "icon": Icons.directions_run,
      "color": Colors.green,
    },
    {
      "name": "Laptop Backpack",
      "price": "₹899",
      "icon": Icons.backpack,
      "color": Colors.purple,
    },
    {
      "name": "Bluetooth Speaker",
      "price": "₹1,299",
      "icon": Icons.speaker,
      "color": Colors.red,
    },
    {
      "name": "Mobile Stand",
      "price": "₹399",
      "icon": Icons.phone_android,
      "color": Colors.teal,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Shopping App"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),

        // List mein kitne items hain
        itemCount: products.length,

        // Har item ka UI
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            child: ListTile(
              contentPadding: const EdgeInsets.all(12),

              leading: CircleAvatar(
                radius: 28,
                backgroundColor: product["color"],
                child: Icon(
                  product["icon"],
                  color: Colors.white,
                  size: 28,
                ),
              ),

              title: Text(
                product["name"],
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  product["price"],
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "${product["name"]} cart mein add ho gaya",
                      ),
                    ),
                  );
                },
                child: const Text("Add"),
              ),

              onTap: () {
                print("${product["name"]} selected");
              },
            ),
          );
        },
      ),
    );
  }
}
/*
class WidgetPractice extends StatelessWidget {
  const WidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
      ),

      body: ListView(
        children: [
          // =================================================
          // CHAT 1
          // =================================================

          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),

            leading: const CircleAvatar(
              radius: 25,
              child: Icon(Icons.person),
            ),

            title: const Text(
              "Rahul Sharma",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),

            subtitle: const Text(
              "Kal meeting hai?",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            trailing: const Text(
              "8:45 PM",
              style: TextStyle(
                fontSize: 12,
              ),
            ),

            onTap: () {
              print("Rahul Sharma chat opened");
            },
          ),

          const Divider(
            height: 1,
          ),

          // =================================================
          // CHAT 2
          // =================================================

          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),

            leading: const CircleAvatar(
              radius: 25,
              child: Icon(Icons.person),
            ),

            title: const Text(
              "Amit Kumar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),

            subtitle: const Text(
              "Okay bro 👍",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            trailing: const Text(
              "8:30 PM",
              style: TextStyle(
                fontSize: 12,
              ),
            ),

            onTap: () {
              print("Amit Kumar chat opened");
            },
          ),

          const Divider(
            height: 1,
          ),

          // =================================================
          // CHAT 3
          // =================================================

          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),

            leading: const CircleAvatar(
              radius: 25,
              child: Icon(Icons.person),
            ),

            title: const Text(
              "Priya",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),

            subtitle: const Text(
              "Photo bhej dena",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            trailing: const Text(
              "8:10 PM",
              style: TextStyle(
                fontSize: 12,
              ),
            ),

            onTap: () {
              print("Priya chat opened");
            },
          ),

          const Divider(
            height: 1,
          ),

          // =================================================
          // CHAT 4
          // =================================================

          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),

            leading: const CircleAvatar(
              radius: 25,
              child: Icon(Icons.person),
            ),

            title: const Text(
              "Rohit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),

            subtitle: const Text(
              "Where are you?",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            trailing: const Text(
              "7:55 PM",
              style: TextStyle(
                fontSize: 12,
              ),
            ),

            onTap: () {
              print("Rohit chat opened");
            },
          ),

          const Divider(
            height: 1,
          ),

          // =================================================
          // CHAT 5
          // =================================================

          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),

            leading: const CircleAvatar(
              radius: 25,
              child: Icon(Icons.person),
            ),

            title: const Text(
              "Neha",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),

            subtitle: const Text(
              "Good night 🌙",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            trailing: const Text(
              "7:30 PM",
              style: TextStyle(
                fontSize: 12,
              ),
            ),

            onTap: () {
              print("Neha chat opened");
            },
          ),
        ],
      ),
    );
  }
}

//===================outlinedButton Example==============
class WidgetPractice extends StatelessWidget {
  const WidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OutlinedButton Example"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Card(
          elevation: 5,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                const Text(
                  "Cheese Burst Pizza",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Extra cheese with fresh vegetables",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "⭐ 4.5",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

                const Divider(
                  height: 30,
                ),

                const Text(
                  "₹299",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                // ==========================================
                // PRIMARY ACTION
                // ==========================================

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {},

                    child: const Text(
                      "Add to Cart",
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // ==========================================
                // NEW WIDGET → OUTLINED BUTTON
                // ==========================================

                SizedBox(
                  width: double.infinity,

                  child: OutlinedButton(
                    onPressed: () {},

                    child: const Text(
                      "View Reviews",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



//==========Navigation Example==========
// =====================================================
// HOME SCREEN
// =====================================================

class WidgetPractice extends StatelessWidget {
  const WidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Delivery"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Card(
          elevation: 5,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                const Text(
                  "Cheese Burst Pizza",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Extra cheese with fresh vegetables",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),

                const Divider(
                  height: 30,
                ),

                const Text(
                  "₹299",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {

                      // ===============================
                      // NAVIGATION
                      // ===============================

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ProductDetailsScreen();
                          },
                        ),
                      );
                    },

                    child: const Text(
                      "View Details",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// =====================================================
// PRODUCT DETAILS SCREEN
// =====================================================

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Card(
          elevation: 5,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                const Text(
                  "Cheese Burst Pizza",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  "Extra cheese with fresh vegetables",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                const Divider(
                  height: 30,
                ),

                const Text(
                  "Price: ₹299",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "⭐ 4.5",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 30),

                // Add To Cart
                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Pizza added to cart!",
                          ),
                        ),
                      );
                    },

                    child: const Text(
                      "Add to Cart",
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Back Button
                SizedBox(
                  width: double.infinity,

                  child: OutlinedButton(
                    onPressed: () {

                      // ===============================
                      // GO BACK
                      // ===============================

                      Navigator.pop(context);
                    },

                    child: const Text(
                      "Back",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//=============StatefulWidget Example==============
class WidgetPractice extends StatefulWidget {
  const WidgetPractice({super.key});

  @override
  State<WidgetPractice> createState() {
    return _WidgetPracticeState();
  }
}

class _WidgetPracticeState extends State<WidgetPractice> {
  // ==================== STATE ====================

  int quantity = 1;

  final int price = 299;

  // ==================== ADD ITEM ====================

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  // ==================== REMOVE ITEM ====================

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = price * quantity;

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            // =================================================
            // FOOD PRODUCT CARD
            // =================================================

            Card(
              elevation: 5,

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
                      "Cheese Burst Pizza",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Description
                    const Text(
                      "Extra cheese with fresh vegetables",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),

                    const Divider(
                      height: 30,
                    ),

                    // Price
                    Row(
                      children: [

                        const Text(
                          "Price:",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),

                        const SizedBox(width: 8),

                        Text(
                          "₹$price",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // =================================================
                    // QUANTITY SECTION
                    // =================================================

                    Row(
                      children: [

                        const Text(
                          "Quantity:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const Spacer(),

                        // Minus Button
                        IconButton(
                          onPressed: decreaseQuantity,
                          icon: const Icon(
                            Icons.remove,
                          ),
                        ),

                        // Quantity
                        Text(
                          "$quantity",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // Plus Button
                        IconButton(
                          onPressed: increaseQuantity,
                          icon: const Icon(
                            Icons.add,
                          ),
                        ),
                      ],
                    ),

                    const Divider(
                      height: 30,
                    ),

                    // =================================================
                    // TOTAL PRICE
                    // =================================================

                    Row(
                      children: [

                        const Expanded(
                          child: Text(
                            "Total Price",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Text(
                          "₹$totalPrice",
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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



// ==================== Expanded Example ====================
class WidgetPractice extends StatelessWidget {
  const WidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Example"),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          // =================================================
          // PRODUCT CARD 1
          // =================================================

          Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 15),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            child: Padding(
              padding: const EdgeInsets.all(15),

              child: Row(
                children: [
                  // Product Information
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Cheese Burst Pizza",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          "Extra cheese with fresh vegetables",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),

                        const Divider(
                          height: 20,
                        ),

                        const Text(
                          "₹299",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 15),

                  // Add Button
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Add"),
                  ),
                ],
              ),
            ),
          ),

          // =================================================
          // PRODUCT CARD 2
          // =================================================

          Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 15),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            child: Padding(
              padding: const EdgeInsets.all(15),

              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Veg Burger",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          "Crispy burger with fresh vegetables",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),

                        const Divider(
                          height: 20,
                        ),

                        const Text(
                          "₹149",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 15),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Add"),
                  ),
                ],
              ),
            ),
          ),

          // =================================================
          // PRODUCT CARD 3
          // =================================================

          Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 15),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            child: Padding(
              padding: const EdgeInsets.all(15),

              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Cold Coffee",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          "Chilled coffee with creamy foam",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),

                        const Divider(
                          height: 20,
                        ),

                        const Text(
                          "₹99",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 15),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Add"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//=============ListView Example==============
class WidgetPractice extends StatelessWidget {
  const WidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Example"),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          // Product 1
          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "iPhone 15",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text("Latest Apple Smartphone"),

                  const Divider(
                    height: 25,
                  ),

                  const Text(
                    "₹69,999",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Product 2
          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Samsung Galaxy S25",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text("Powerful Android Smartphone"),

                  const Divider(
                    height: 25,
                  ),

                  const Text(
                    "₹74,999",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Product 3
          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "OnePlus 13",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text("Fast and powerful smartphone"),

                  const Divider(
                    height: 25,
                  ),

                  const Text(
                    "₹69,999",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Product 4
          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Google Pixel 10",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text("Smart Google smartphone"),

                  const Divider(
                    height: 25,
                  ),

                  const Text(
                    "₹79,999",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// ==================== DIVIDER PRACTICE ====================
class WidgetPractice extends StatelessWidget {
  const WidgetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Divider Example"),
      ),

      body: Card(
        elevation: 10,
        margin: const EdgeInsets.all(20),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            color: Colors.grey,
            width: 1,
          ),

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

              // Description
              const Text(
                "Latest Apple Smartphone",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              // Divider
              const Divider(
                height: 30,
                thickness: 1,
              ),

              // Price Section
              const Text(
                "Price",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "₹69,999",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Divider
              const Divider(
                height: 30,
                thickness: 1,
              ),

              // Rating Section
              const Text(
                "Rating",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "⭐ 4.5",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),

              // Divider
              const Divider(
                height: 30,
                thickness: 1,
              ),

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

//============Card Example==============
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