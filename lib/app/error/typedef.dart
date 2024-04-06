import 'package:fpdart/fpdart.dart';
import 'package:jokee_single_serving/app/error/exeption.dart';

typedef FutureEither<T> = Future<Either<BaseException, T>>;
