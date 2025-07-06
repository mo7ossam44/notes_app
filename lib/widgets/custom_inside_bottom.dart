import 'package:flutter/material.dart';

class CustomInsideBottom extends StatelessWidget {
  const CustomInsideBottom({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 165),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 120, 255, 241),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.black54, fontSize: 18),
        ),
      ),
    );
  }
}
