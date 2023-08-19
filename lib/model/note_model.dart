// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';


// part 'note.g.dart';

@collection
class NoteModel {
  Id id = Isar.autoIncrement;
  final String title;
  final String description;
  final String lastModifed;

  NoteModel(
      this.id,
      this.title,
      this.description,
      this.lastModifed,
      );

  NoteModel copyWith({
    Id? id,
    String? title,
    String? description,
    String? lastModifed,
  }) {
    return NoteModel(
      id ?? this.id,
      title ?? this.title,
      description ?? this.description,
      lastModifed ?? this.lastModifed,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'lastModifed': lastModifed,
    };
  }

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      map['id'],
      map['title'] as String,
      map['description'] as String,
      map['lastModifed'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NoteModel.fromJson(String source) => NoteModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NoteModel(id: $id, title: $title, description: $description, lastModifed: $lastModifed)';
  }

  @override
  bool operator ==(covariant NoteModel other) {
    if (identical(this, other)) return true;

    return
      other.id == id &&
          other.title == title &&
          other.description == description &&
          other.lastModifed == lastModifed;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    title.hashCode ^
    description.hashCode ^
    lastModifed.hashCode;
  }
}
