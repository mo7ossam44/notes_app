import 'dart:ui';

class NoteModel {
  final Color color;
  final String title;
  final String subtitle;
  final DateTime dateTime;

  NoteModel({
    required this.color,
    required this.title,
    required this.subtitle,
    required this.dateTime,
  });
}
