import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences prefs;

  static bool _isDarkMode = false;

  static Future<void> configurePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  static bool get isDarkMode {
    return prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    prefs.setBool('isDarkMode', value);
  }
}
