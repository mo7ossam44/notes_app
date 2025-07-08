import 'package:flutter/material.dart';
import 'package:notes/widgets/notes_view_body.dart';
import 'package:notes/widgets/custom_floating_button.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: NotesViewBody(),
    );
  }
}
