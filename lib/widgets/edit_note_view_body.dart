import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: const [
          SizedBox(height: 20),
          CustomAppBar(text: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextFiled(text: 'Title', maxlines: 1),
          CustomTextFiled(text: 'Content', maxlines: 5),
        ],
      ),
    );
  }
}
