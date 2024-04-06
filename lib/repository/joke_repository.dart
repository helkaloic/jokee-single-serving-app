import 'package:fpdart/fpdart.dart';
import 'package:jokee_single_serving/app/constants/gen/assets.gen.dart';
import 'package:jokee_single_serving/app/error/exeption.dart';
import 'package:jokee_single_serving/app/error/typedef.dart';
import 'package:jokee_single_serving/app/services/json_loader.dart';
import 'package:jokee_single_serving/repository/model/joke_model.dart';

class JokeRepository {
  FutureEither<List<JokeModel>> getAllJokes() async {
    try {
      final results = await JsonLoader.loadList(Assets.data.jokes);
      return Right(results.map((map) => JokeModel.fromMap(map)).toList());
    } catch (e) {
      return Left(DatabaseException(e.toString()));
    }
  }
}
