import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String language = 'en';
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String newLanguage) {
    if (language == newLanguage) {
      return;
    }
    language = newLanguage;
    notifyListeners();
  }

  void changeTheme(ThemeMode newTheme) {
    if (themeMode == newTheme) {
      return;
    }
    themeMode = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return themeMode == ThemeMode.dark;
  }
}
