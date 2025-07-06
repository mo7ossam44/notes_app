import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_inside_bottom.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomTextFiled(text: 'Title', maxlines: 1),
          CustomTextFiled(text: 'Content', maxlines: 5),
          Spacer(),
          CustomInsideBottom(text: 'Add'),
        ],
      ),
    );
  }
}
