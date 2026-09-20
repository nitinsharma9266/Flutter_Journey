import 'package:flutter/material.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        const Icon(
          Icons.location_on,
          color: Colors.blue,
        ),

        const SizedBox(width: 8),

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Deliver to",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

            Text(
              "Kesvan, Hardoi",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        const Spacer(),

        IconButton(
          onPressed: () {
            print("Notification clicked");
          },
          icon: const Icon(
            Icons.notifications,
          ),
        ),
      ],
    );
  }
}