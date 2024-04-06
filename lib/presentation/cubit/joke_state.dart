// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'joke_cubit.dart';

enum JokeStatus { empty, loading, loaded, error }

class JokeState extends Equatable {
  final JokeStatus status;
  final JokeModel? model;
  final String? message;

  const JokeState({required this.status, this.model, this.message});

  @override
  List<Object?> get props => [status, model, message];

  JokeState copyWith({
    JokeStatus? status,
    JokeModel? model,
    String? message,
  }) {
    return JokeState(
      status: status ?? this.status,
      model: model ?? this.model,
      message: message ?? this.message,
    );
  }
}
