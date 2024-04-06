import 'package:get_it/get_it.dart';
import 'package:jokee_single_serving/app/services/shared_preference.dart';
import 'package:jokee_single_serving/presentation/cubit/joke_cubit.dart';
import 'package:jokee_single_serving/repository/joke_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> setUpServiceLocator() async {
  //! External
  sl.registerLazySingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  await sl.isReady<SharedPreferences>();
  //! Joke
  sl.registerLazySingleton(() => SharedPrefService(sl()));
  sl.registerLazySingleton(() => JokeRepository());
  sl.registerFactory(() => JokeCubit(sl(), sl()));
}
