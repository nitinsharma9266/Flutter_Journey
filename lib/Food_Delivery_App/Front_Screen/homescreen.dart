import 'package:flutter/material.dart';

import '../Home/location_section.dart';
import '../Home/search_bar.dart';
import '../Home/offer_banner.dart';
import '../Home/categories_section.dart';
import '../Home/popular_restaurants.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Delivery App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [

              const LocationSection(),

              const SizedBox(height: 15),

              const SearchBarWidget(),

              const SizedBox(height: 15),

              const OfferBanner(),

              const SizedBox(height: 20),

              const CategoriesSection(),

              const SizedBox(height: 20),

              const PopularRestaurants(),
            ],
          ),
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Cart",
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue,
        ),
        ],
      )
    );
  }
}