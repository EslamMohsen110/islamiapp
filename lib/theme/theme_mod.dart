import 'package:flutter/material.dart';
import 'package:islamii_aapp/color/color_app.dart';

class ThemeMod {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorApp.kBlackColor,
      unselectedItemColor: ColorApp.kWhiteColor,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: ColorApp.kBlackColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: ColorApp.kBlackColor,
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: ColorApp.kBlackColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        color: ColorApp.kBlackColor,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        color: ColorApp.kBlackColor,
        fontSize: 26,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorApp.kyellowColor,
      unselectedItemColor: ColorApp.kWhiteColor,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: ColorApp.kWhiteColor,
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: ColorApp.kWhiteColor,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: ColorApp.kWhiteColor,
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: ColorApp.kWhiteColor,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        color: ColorApp.kWhiteColor,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        color: ColorApp.kWhiteColor,
        fontSize: 26,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
