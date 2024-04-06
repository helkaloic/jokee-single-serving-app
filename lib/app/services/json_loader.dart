import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class JsonLoader {
  JsonLoader._();
  static Future<Map<String, dynamic>> load(String path) async {
    try {
      final stringData = await rootBundle.loadString(path);
      return jsonDecode(stringData);
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<Map<String, dynamic>>> loadList(String path) async {
    try {
      final stringData = await rootBundle.loadString(path);
      final List<dynamic> results = jsonDecode(stringData);
      return results.map((e) => e as Map<String, dynamic>).toList();
    } catch (e) {
      rethrow;
    }
  }
}
