import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/custom_text_field.dart';
import 'package:notes/widgets/custom_inside_bottom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  NoteModel? noteModel;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFiled(
            text: 'Title',
            maxlines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextFiled(
            text: 'Content',
            maxlines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          CustomInsideButton(
            text: 'Add',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
