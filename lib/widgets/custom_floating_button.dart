import 'package:flutter/material.dart';
import 'package:notes/widgets/add_note_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const AddNoteButtomSheet();
          },
        );
      },
      child: Icon(Icons.add, color: Colors.black),
      backgroundColor: const Color.fromARGB(255, 120, 255, 241),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(40),
      ),
    );
  }
}
