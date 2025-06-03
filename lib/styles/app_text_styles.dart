import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle header = TextStyle(
    color: AppColors.gold,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle logo = TextStyle(
    color: AppColors.gold,
    fontSize: 100,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle buttonText = TextStyle(
    color: AppColors.gold,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 1.2,
  );

  static const TextStyle hintText = TextStyle(
    color: Colors.grey,
  );

  static const TextStyle linkText = TextStyle(
    color: Colors.white70,
  );
}
