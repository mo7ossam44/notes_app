import 'package:flutter/material.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({super.key, required this.icon, this.onPressed});

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon), iconSize: 30),
    );
  }
}
