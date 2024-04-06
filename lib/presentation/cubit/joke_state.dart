// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'joke_cubit.dart';

enum JokeStatus { empty, loading, loaded, error }

class JokeState extends Equatable {
  final JokeStatus status;
  final List<JokeModel>? list;
  final String? message;

  const JokeState({
    required this.status,
    this.list,
    this.message,
  });

  @override
  List<Object?> get props => [status, list, message];

  JokeState copyWith({
    JokeStatus? status,
    List<JokeModel>? list,
    String? message,
  }) {
    return JokeState(
      status: status ?? this.status,
      list: list ?? this.list,
      message: message ?? this.message,
    );
  }
}
