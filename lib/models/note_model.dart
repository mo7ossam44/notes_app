import 'dart:ui';
import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0) 

class NoteModel extends HiveObject{
  @HiveField(0)
  final Color color;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String subtitle;
  @HiveField(3)
  final DateTime dateTime;

  NoteModel({
    required this.color,
    required this.title,
    required this.subtitle,
    required this.dateTime,
  });
}
