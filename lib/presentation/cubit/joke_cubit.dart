import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokee_single_serving/repository/model/joke_model.dart';

part 'joke_state.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeCubit() : super(const JokeState(status: JokeStatus.empty));

  Future<void> getAllJokes() async {
    emit(state.copyWith(status: JokeStatus.loading));
  }
}
