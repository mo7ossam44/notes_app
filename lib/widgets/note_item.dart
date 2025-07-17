import 'package:animated_confirm_dialog/animated_confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/edit_note_view.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});

  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EditNoteView(note: notes)),
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 24, left: 16, bottom: 24, right: 5),
        decoration: BoxDecoration(
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  notes.subtitle,
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  showCustomDialog(
                    messageColor: Colors.white,
                    titleColor: Colors.white,
                    context: context,
                    title: 'Delete Item?',
                    message: 'Delete this item?',
                    cancelButtonText: 'No',
                    confirmButtonText: 'Yes',
                    cancelButtonColor: Colors.red,
                    cancelButtonTextColor: Colors.white,
                    confirmButtonColor: Colors.green,
                    confirmButtonTextColor: Colors.white,
                    onCancel: () {
                      Navigator.of(context).pop();
                    },
                    onConfirm: () {
                      notes.delete();
                      BlocProvider.of<NotesCubt>(context).fetchAllNotes();
                      Navigator.of(context).pop();
                    },
                    isFlip: false,
                    backgroundColor: Colors.black,
                  );
                },
                icon: Icon(Icons.delete),
                color: Colors.black,
                iconSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                notes.dateTime,
                style: TextStyle(color: Colors.black45, fontSize: 14),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
