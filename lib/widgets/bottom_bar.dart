import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.person),
            color: Colors.white,
            onPressed: () {
              // Profile button action here
            },
          ),
          IconButton(
            icon: const Icon(Icons.alarm),
            color: Colors.white,
            onPressed: () {
              // Plans button action here
            },
          ),
          IconButton(
            icon: const Icon(Icons.devices),
            color: Colors.white,
            onPressed: () {
              // Device button action here
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {
              // Settings button action here
            },
          ),
        ],
      ),
    );
  }
}
