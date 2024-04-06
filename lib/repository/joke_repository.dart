import 'package:jokee_single_serving/app/services/shared_preference.dart';

class JokeRepository {
  static final JokeRepository _instance = JokeRepository._init();
  factory JokeRepository() => _instance;

  final _prefs = SharedPrefService();

  JokeRepository._init();
}
