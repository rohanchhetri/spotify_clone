import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  final IconData icon;
  final String name;
  const DrawerItems({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              name,
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
