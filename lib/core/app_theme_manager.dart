import 'package:flutter/material.dart';
import 'package:space/core/app_colors.dart';

abstract class AppThemeManager {
  static ThemeData appTheme() => ThemeData(
    scaffoldBackgroundColor: AppColors.black,
  );
}