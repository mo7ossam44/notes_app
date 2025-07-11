import 'dart:developer';
import 'package:notes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/widgets/add_note_form.dart';
import 'package:notes/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              log('field ${state.errMessage}');
            }
            if (state is AddNoteSucess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              color: kPrimaryColor,
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const SingleChildScrollView(child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
