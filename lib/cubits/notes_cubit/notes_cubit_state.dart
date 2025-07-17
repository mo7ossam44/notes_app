part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesCubitState {}

class NotesInitial extends NotesCubitState {}
class NotesSucess extends NotesCubitState {}
class NoNotesAvalible extends NotesCubitState {}