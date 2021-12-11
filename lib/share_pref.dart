import 'package:shared_preferences/shared_preferences.dart';

class Prefs {

  static SharedPreferences? _prefs;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences?> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }



  // get && set string
  static Future<bool?> setStringToken(String value) async => await _prefs?.setString("MyStringKey", value);
  static String? getStringToken() => _prefs?.getString("MyStringKey") ?? "";   // default value is ""


  // get && set int
  static Future<bool?> setInt(int value) async => await _prefs?.setInt("MyIntKey", value);
  static int? getInt() => _prefs?.getInt("MyIntKey") ?? 0;  // default value is 0


  // get && set boolean
  static Future<bool?> setBool(bool value) async => await _prefs?.setBool("MyBooleanKey" , value);
  static bool? getBool() => _prefs?.getBool("MyBooleanKey") ?? true;  // default value is true



  // get && set double
  static Future<bool?> setDouble(double value) async => await _prefs?.setDouble("MyDoubleKey", value);
  static double? getDouble() => _prefs?.getDouble("MyDoubleKey") ?? 0.0;  // default value is 0.0


  // get && set list<String>
  static Future<bool?> setStringList(dynamic value) async => await _prefs?.setStringList("MyStringListKey", value);
  // static List<dynamic? getStringList() => _prefs?.getStringList("MyStringListKey") ?? [];   // default value is []
  static dynamic? getStringList() => _prefs?.getStringList("MyStringListKey") ?? [];   // default value is []


  static Future<bool?> remove(String key) async => await _prefs?.remove(key);
  static Future<bool?> clear() async => await _prefs?.clear();








  // //sets
  // static Future<bool> setBool(String key, bool value) async =>
  //     await _prefs.setBool(key, value);
  //
  // static Future<bool> setDouble(String key, double value) async =>
  //     await _prefs.setDouble(key, value);
  //
  // static Future<bool> setInt(String key, int value) async =>
  //     await _prefs.setInt(key, value);
  //
  // static Future<bool> setString(String key, String value) async =>
  //     await _prefs.setString(key, value);
  //
  // static Future<bool> setStringList(String key, List<String> value) async =>
  //     await _prefs.setStringList(key, value);
  //
  // //gets
  // static bool getBool(String key) => _prefs.getBool(key);
  //
  // static double getDouble(String key) => _prefs.getDouble(key);
  //
  // static int getInt(String key) => _prefs.getInt(key);
  //
  // static String getString(String key) => _prefs.getString(key);
  //
  // static List<String> getStringList(String key) => _prefs.getStringList(key);

  //deletes..
  // static Future<bool?> remove(String key) async => await _prefs?.remove(key);
  //
  // static Future<bool?> clear() async => await _prefs?.clear();
}