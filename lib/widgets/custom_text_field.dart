import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.text,

    required this.maxlines,
  });
  final String text;
  final int maxlines;

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
        maxLines: maxlines,
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
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
