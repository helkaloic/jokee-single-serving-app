import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  final SharedPreferences prefs;

  SharedPrefService(this.prefs);

  Future<void> saveJoke(String id) async {
    final list = getJokeIds();
    list.add(id);
    prefs.setStringList("jokes", list.toSet().toList());
  }

  List<String> getJokeIds() => prefs.getStringList("jokes") ?? [];

  void clearAllJokes() => prefs.remove("jokes");
}
