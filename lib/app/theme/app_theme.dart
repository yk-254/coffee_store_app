// lib/theme/app_theme.dart
import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF6B4E3D); // Primary
  static const secondary = Color(0xFFD19F6C); // Secondary
  static const third = Color.fromARGB(255, 230, 200, 170);
  static const buttonText = Color(0xFFFFFFFF);
  static const background = Color(0xFFF4EDE4); // Scaffold background
  static const text = Color(0xFF6B4E3D); // Text color
  static const error = Colors.red; // Error
  static const iconUnselected = Color(0xFF7B736B); // Unselected icon
  static const gradientStart = Color(0xFFD19F6C); // Accent gradient start
  static const gradientEnd = Color(0xFF6B4E3D); // Accent gradient end
  static const textButton = Color.fromARGB(255, 196, 129, 63);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,

      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 2,
      ),

      // Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 26,
            color: AppColors.buttonText,
            fontWeight: FontWeight.bold,
            fontFamily: 'vazirmatn',
            height: 1,
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.textButton,
          textStyle: TextStyle(
            color: AppColors.text,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'vazirmatn',
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // TextFields
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.third,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.text),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.secondary, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.text, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        hintStyle: const TextStyle(color: Colors.grey),
      ),

      // TextTheme
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: AppColors.text,
          fontSize: 18,
          fontWeight: FontWeight.bold,

          fontFamily: 'vazirmatn',
        ),
        bodyMedium: TextStyle(
          color: AppColors.text,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'vazirmatn',
        ),
        titleLarge: TextStyle(
          color: AppColors.text,
          fontSize: 46,
          fontWeight: FontWeight.bold,
          fontFamily: 'vazirmatn',
        ),
        titleMedium: TextStyle(
          color: AppColors.text,
          fontSize: 26,
          fontWeight: FontWeight.bold,
          fontFamily: 'vazirmatn',
        ),
        titleSmall: TextStyle(
          color: AppColors.text,
          fontSize: 14,
          fontFamily: 'vazirmatn',
        ),
      ),

      // BottomNavigationBar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.primary,
        selectedItemColor: Colors.white,
        unselectedItemColor: AppColors.iconUnselected,
        showUnselectedLabels: true,
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
      ),

      // ColorScheme
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AppColors.gradientStart,
        error: AppColors.error,
      ),
    );
  }

  // Gradient برای دکمه‌ها یا FAB
  static LinearGradient get accentGradient => const LinearGradient(
    colors: [AppColors.gradientStart, AppColors.gradientEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
