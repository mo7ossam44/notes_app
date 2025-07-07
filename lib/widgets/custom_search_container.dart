import 'package:flutter/material.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon), iconSize: 30),
    );
  }
}
