import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefController {
  late SharedPreferences _sharedPreferences;

  static final SharedPrefController _instance =
      SharedPrefController._internal();
  SharedPrefController._internal();

  factory SharedPrefController() => _instance;

  Future<void> initShared() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) async {
    return await _sharedPreferences.setString(key, value);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _sharedPreferences.setBool(key, value);
  }

  Future<bool> setInt(String key, int value) async {
    return await _sharedPreferences.setInt(key, value);
  }

  Future<bool> setDouble(String key, double value) async {
    return await _sharedPreferences.setDouble(key, value);
  }

  Future<bool> setStringList(String key, List<String> value) async {
    return await _sharedPreferences.setStringList(key, value);
  }

  String getString(String key) {
    return _sharedPreferences.getString(key) ?? '';
  }

  bool getBool(String key) {
    return _sharedPreferences.getBool(key) ?? false;
  }

  int getInt(String key) {
    return _sharedPreferences.getInt(key) ?? 0;
  }

  double getDouble(String key) {
    return _sharedPreferences.getDouble(key) ?? 0.0;
  }

  List<String> getStringList(String key) {
    return _sharedPreferences.getStringList(key) ?? [];
  }

  Future<bool> remove(String key) async {
    return await _sharedPreferences.remove(key);
  }

  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }
}
