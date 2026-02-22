import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppColors{
  static const primary=Colors.pinkAccent;
}
class FontSizes{
  static const small = 12.0;
  static const standard = 14.0;
  static const standardUP = 16.0;
  static const medium = 20.0;
  static const large = 28.0;
}

class AppThemes {
  static ThemeData get PinkTheme{
    return ThemeData(
      primaryColor:Color(0xFFFFF5F7),
        scaffoldBackgroundColor: Colors.pink.shade50,
        textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
          fontSize: FontSizes.large,
          color: Colors.black
        ),
        titleMedium:GoogleFonts.poppins(
          fontSize: FontSizes.medium,
          color: Colors.black
        ),
        titleSmall: GoogleFonts.poppins(
          fontSize: FontSizes.standardUP,
          color: Colors.black
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: FontSizes.standardUP,
          color: Colors.black
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: FontSizes.standard,
          color: Colors.black
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: FontSizes.small,
          color: Colors.black
        )
      )

    );
  }
}