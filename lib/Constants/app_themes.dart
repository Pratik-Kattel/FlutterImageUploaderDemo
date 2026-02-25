import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  // Primary color used across the app
  static const primary = Colors.pinkAccent;
}

class FontSizes {
  // Standard font sizes for consistent typography
  static const small = 12.0;
  static const standard = 14.0;
  static const standardUP = 16.0;
  static const medium = 20.0;
  static const large = 28.0;
}

class AppThemes {
  // Custom theme for the app with a pink accent
  static ThemeData get PinkTheme {
    return ThemeData(
      primaryColor: Color(0xFFFFF5F7),
      // Base primary color
      scaffoldBackgroundColor: Colors.pink.shade50,
      // Background color for screens

      // Text theme using Google Fonts (Poppins) for consistent style
      textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
          fontSize: FontSizes.large, // Large titles
          color: Colors.black,
        ),
        titleMedium: GoogleFonts.poppins(
          fontSize: FontSizes.medium, // Medium titles
          color: Colors.black,
        ),
        titleSmall: GoogleFonts.poppins(
          fontSize: FontSizes.standardUP, // Small titles
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: FontSizes.standardUP, // Body text large
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: FontSizes.standard, // Body text standard
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: FontSizes.small, // Small body text
          color: Colors.black,
        ),
      ),
    );
  }
}
