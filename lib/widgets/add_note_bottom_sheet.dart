import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_inside_bottom.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFiled(text: 'Title', maxlines: 1),
            CustomTextFiled(text: 'Content', maxlines: 5),
            CustomInsideButton(text: 'Add'),
          ],
        ),
      ),
    );
  }
}
