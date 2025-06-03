import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppGradients {
  static const LinearGradient goldGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.darkGold,
      AppColors.gold,
      AppColors.darkGold,
      AppColors.darkGold,
      AppColors.gold,
      AppColors.darkGold,
    ],
  );
}
