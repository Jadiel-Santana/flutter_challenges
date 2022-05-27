import 'package:flutter/material.dart';
import './theme.dart';

  ThemeData appThemeDark() {
    const Color primaryColor = AppColor.backgroundDark;
    const Color white = AppColor.white;

    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: primaryColor,
      backgroundColor: white,
      scaffoldBackgroundColor: white,
      hintColor: primaryColor,
      buttonColor: primaryColor,
      brightness: Brightness.light,
      fontFamily: 'Montserrat',
      appBarTheme: const AppBarTheme(
        brightness: Brightness.dark,
        elevation: 0,
        titleSpacing: 0,
        centerTitle: true,
        color: primaryColor,
      ),
      cardTheme: CardTheme(
        color: AppColor.backgroundLight,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0,
        foregroundColor: white,
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }