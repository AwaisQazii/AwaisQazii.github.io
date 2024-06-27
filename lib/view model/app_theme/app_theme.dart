import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    scaffoldBackgroundColor: primaryColor,
    useMaterial3: true,
    textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
        .apply(
          bodyColor: Colors.black,
        )
        .copyWith(
          bodyLarge: const TextStyle(color: Colors.black),
          bodyMedium: const TextStyle(color: Colors.black),
        ),
  );
}

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    scaffoldBackgroundColor: Colors.black,
    useMaterial3: true,
    textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
        .apply(
          bodyColor: Colors.white,
        )
        .copyWith(
          bodyLarge: const TextStyle(
            color: Colors.white,
          ),
          bodyMedium: const TextStyle(color: Colors.white),
        ),
  );
}
