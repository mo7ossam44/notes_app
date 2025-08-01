import 'package:notes/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes/views/notes_view.dart';
import 'package:notes/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubt(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: NotesView(),
      ),
    );
  }
}
