import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [SizedBox(height: 20), CustomAppBar()]),
    );
  }
}
