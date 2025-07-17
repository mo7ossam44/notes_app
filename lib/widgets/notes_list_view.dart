import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: BlocBuilder<NotesCubt, NotesCubitState>(
        builder: (context, state) {
          List<NoteModel> notes =
              BlocProvider.of<NotesCubt>(context).notes ?? [];
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: NoteItem(notes: notes[index]),
                );
              },
            );
         
        
        },
      ),
    );
  }
}
