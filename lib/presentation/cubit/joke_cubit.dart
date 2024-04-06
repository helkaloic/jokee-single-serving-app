import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokee_single_serving/app/services/shared_preference.dart';
import 'package:jokee_single_serving/repository/joke_repository.dart';
import 'package:jokee_single_serving/repository/model/joke_model.dart';

part 'joke_state.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeCubit(this.repository, this.prefs)
      : super(const JokeState(status: JokeStatus.empty));

  final JokeRepository repository;
  final SharedPrefService prefs;

  Future<void> markJoke(String id) async {
    emit(state.copyWith(status: JokeStatus.loading));

    try {
      await prefs.saveJoke(id);
      getAllJokes();
    } catch (e) {
      emit(state.copyWith(status: JokeStatus.error, message: e.toString()));
    }
  }

  Future<void> getAllJokes() async {
    emit(state.copyWith(status: JokeStatus.loading));

    final result = await repository.getAllJokes();
    result.fold(
      (l) => emit(state.copyWith(status: JokeStatus.error, message: l.message)),
      (list) {
        final savedJokes = prefs.getJokeIds();
        final filteredList =
            list.where((e) => !savedJokes.contains(e.id)).toList()..shuffle();

        emit(state.copyWith(
          status:
              filteredList.isNotEmpty ? JokeStatus.loaded : JokeStatus.empty,
          list: filteredList,
        ));
      },
    );
  }
}
