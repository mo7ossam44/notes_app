import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: NoteItem(
              noteModel: NoteModel(
                color: Colors.yellow.shade200,
                title: 'Flutter Tips',
                subtitle: 'build yor career with thrwat same',
                dateTime: DateTime(2000),
              ),
            ),
          );
        },
      ),
    );
  }
}
