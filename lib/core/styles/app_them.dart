import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/constants/app_colors.dart';

class AppThem {
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: AppColors.bg,
    primaryColor: AppColors.primary,
    useMaterial3: true,

    appBarTheme: const AppBarThemeData(
      centerTitle: true,
      backgroundColor: AppColors.unActiveColor,
      titleTextStyle: TextStyle(
        color: AppColors.primaryText,
        fontWeight: .w600,
        fontSize: 18,
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(double.infinity, 100),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(0),
        ),
        textStyle: const TextStyle(fontSize: 24, fontWeight: .w600),
      ),
    ),
  );
}
