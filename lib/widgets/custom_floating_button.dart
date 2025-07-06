
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add, color: Colors.black),
      backgroundColor: const Color.fromARGB(255, 120, 255, 241),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(40),
      ),
    );
  }
}
