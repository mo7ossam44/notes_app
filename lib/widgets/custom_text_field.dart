import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.text,
    required this.contentPaddingVertical,
    required this.contentPaddingHorizontal,
  });
  final String text;
  final double contentPaddingVertical;
  final double contentPaddingHorizontal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: contentPaddingVertical,
            horizontal: contentPaddingHorizontal,
          ),
          hintText: text,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 120, 255, 241),
            ),
          ),
        ),
      ),
    );
  }
}
