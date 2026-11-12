import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static const TextStyle headTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.secondaryColor
  );
  static const TextStyle title = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: AppColors.secondaryColor,

  );
  static const TextStyle informationTitle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.secondaryColor,

  );
  static const TextStyle loginTitle = TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w900,
      color: AppColors.secondaryColor
  );
}