import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

ThemeData themeApp() {
  return ThemeData(
    // Replace with your font family name
    scaffoldBackgroundColor: AppColors.grey,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.white,
        // Text color
        backgroundColor: AppColors.blue,
        // Background color
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        // Padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Button shape
        ),
      ),
    ),

    // Customize text theme
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        fontSize: 40.0,
        fontWeight: FontWeight.normal,
        color: AppColors.white, // Body text color
      ),
      bodyLarge: const TextStyle(
        fontSize: 35.0,
        fontWeight: FontWeight.w600,
        color: AppColors.deepGrey, // Medium body text color
      ),
      bodyMedium: const TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w600,
        color: AppColors.white, // Medium body text color
      ),
      labelLarge: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: AppColors.white, // Button label text color
      ),
    ),
  );
}
