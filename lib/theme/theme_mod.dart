import 'package:flutter/material.dart';
import 'package:islamii_aapp/color/color_app.dart';

class ThemeMod {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: ColorApp.kBlackColor,
      unselectedItemColor: ColorApp.kWhiteColor,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: ColorApp.kBlackColor,
        fontSize: 30,
        fontFamily: 'ElMessiri',
      ),
      headlineMedium: TextStyle(
        color: ColorApp.kBlackColor,
        fontSize: 25,
        fontFamily: 'ElMessiri',
      ),
      displayLarge: TextStyle(
          color: ColorApp.kBlackColor,
        fontSize: 25, fontFamily: 'Zain'),
      displayMedium: TextStyle(
          color: ColorApp.kBlackColor, fontSize: 20, fontFamily: 'Zain'),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: ColorApp.kyellowColor,
      unselectedItemColor: ColorApp.kWhiteColor,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: ColorApp.kWhiteColor,
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: ColorApp.kWhiteColor,
        fontSize: 30,
        fontFamily: 'ElMessiri',
      ),
      headlineMedium: TextStyle(
        color: ColorApp.kWhiteColor,
        fontSize: 25,
        fontFamily: 'ElMessiri',
      ),
      displayLarge: TextStyle(
          color: ColorApp.kWhiteColor, fontSize: 25, fontFamily: 'Zain'),
      displayMedium: TextStyle(
          color: ColorApp.kWhiteColor, fontSize: 20, fontFamily: 'Zain'),
    ),
  );
}
