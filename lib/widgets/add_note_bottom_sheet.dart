import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes/widgets/add_note_form.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/cubits/add_note_cubit/add_note_state.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            topSnakBar(
              context,
              'Something went wrong. Please check your credentials and try again',
            );
          }
          if (state is AddNoteSucess) {
            BlocProvider.of<NotesCubt>(context).fetchAllNotes();
            topSnakBar(
              context,
              'Good job, your note is added successfully. Have a nice day',
            );
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }

  void topSnakBar(BuildContext context, String message) {
    return showTopSnackBar(
      Overlay.of(context),
      const CustomSnackBar.info(
        backgroundColor: Colors.green,
        message: 'Good job, your note is added successfully. Have a nice day',
      ),
    );
  }
}
