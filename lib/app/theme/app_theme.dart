import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.primaryDark,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryLight,
      secondary: AppColors.secondary4,
    ),
    textTheme: TextTheme(
      headlineLarge: AppTextStyles.extraBold(fontSize: 32),
      headlineMedium: AppTextStyles.bold(fontSize: 24),
      headlineSmall: AppTextStyles.semiBold(fontSize: 20),
      bodyLarge: AppTextStyles.medium(fontSize: 16),
      bodyMedium: AppTextStyles.regular(fontSize: 14),
      bodySmall: AppTextStyles.regular(fontSize: 12),
    ),
  );
}
