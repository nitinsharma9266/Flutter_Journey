import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),

      child: const Row(
        children: [

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),

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
    );
  }
}