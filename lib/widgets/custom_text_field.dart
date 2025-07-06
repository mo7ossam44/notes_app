import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

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

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: KPrimaryColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: contentPaddingVertical,
            horizontal: contentPaddingHorizontal,
          ),
          hintText: text,
          hintStyle: TextStyle(color: KPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }
}
