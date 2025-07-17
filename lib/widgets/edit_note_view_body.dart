import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/colors_list_view.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubt>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),
          CustomTextFiled(
            text: widget.note.title,
            maxlines: 1,
            onChanged: (value) {
              title = value;
            },
          ),
          CustomTextFiled(
            text: widget.note.subtitle,
            maxlines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          SizedBox(height: 30),
          EditViewColorsList(note: widget.note),
        ],
      ),
    );
  }
}

class EditViewColorsList extends StatefulWidget {
  const EditViewColorsList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditViewColorsList> createState() => _EditViewColorsListState();
}

class _EditViewColorsListState extends State<EditViewColorsList> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = kColors.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            widget.note.color = kColors[index].value;
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ColorItem(
              isActive: currentIndex == index,
              color: kColors[index],
            ),
          ),
        ),
      ),
    );
  }
}
