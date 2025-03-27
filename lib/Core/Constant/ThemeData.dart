// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences? prefs;
  bool DarkMode = true;

  bool get isDarkMode => DarkMode;

  ThemeProvider() {
    loadFromPrefs();
  }

  initPrefs() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  loadFromPrefs() async {
    await initPrefs();
    DarkMode = prefs?.getBool(key) ?? false;
    notifyListeners();
  }

  saveToPrefs() async {
    await initPrefs();
    prefs?.setBool(key, isDarkMode);
  }

  void toggleTheme() {
    DarkMode = !isDarkMode;
    notifyListeners();
        saveToPrefs();

  }
}