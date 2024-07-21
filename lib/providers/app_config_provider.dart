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

class MyProviderSebha extends ChangeNotifier {
  double turn = 0.4;
  int counter = 1;
  int phraseIndex = 0;
  List<String> phrases = ['سبحان الله', 'الحمد لله', 'الله أكبر'];

  void incrementCounter() {
    counter++;
    turn++;
    if (counter == 34) {
      counter = 1;
      phraseIndex = (phraseIndex + 1) % phrases.length;
    }
    notifyListeners();
  }
}