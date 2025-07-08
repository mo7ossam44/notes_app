import 'package:flutter/material.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMessage;
  AddNoteFailure(this.errMessage);
} 
