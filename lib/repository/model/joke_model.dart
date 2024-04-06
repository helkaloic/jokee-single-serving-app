// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class JokeModel {
  JokeModel({
    required this.id,
    required this.content,
  });

  final String id;
  final String content;

  JokeModel copyWith({
    String? id,
    String? content,
  }) {
    return JokeModel(
      id: id ?? this.id,
      content: content ?? this.content,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'content': content,
    };
  }

  factory JokeModel.fromMap(Map<String, dynamic> map) {
    return JokeModel(
      id: map['id'] as String,
      content: map['content'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory JokeModel.fromJson(String source) =>
      JokeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Joke(id: $id, content: $content)';

  @override
  bool operator ==(covariant JokeModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.content == content;
  }

  @override
  int get hashCode => id.hashCode ^ content.hashCode;
}
