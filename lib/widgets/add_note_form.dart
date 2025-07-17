import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/widgets/colors_list_view.dart';
import 'package:notes/widgets/custom_text_field.dart';
import 'package:notes/widgets/custom_inside_bottom.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  int? color;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomTextFiled(
            text: 'Title',
            maxlines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 10),
          CustomTextFiled(
            text: 'Content',
            maxlines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 20),
          const ColorsListView(),
          SizedBox(height: 20),
          CustomInsideButton(
            text: 'Add',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                String formatetedCurrentDate = manageDate();
                NoteModel noteModel = NoteModel(
                  title: title!,
                  subtitle: subtitle!,
                  color: Colors.red.value,
                  dateTime: formatetedCurrentDate,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  String manageDate() {
    var currentDate = DateTime.now();
    var formatetedCurrentDate = DateFormat(
      'dd-mm-yyyy',
    ).format(currentDate);
    return formatetedCurrentDate;
  }
}
