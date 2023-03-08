import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poolc_quiz_app/src/config/color_scheme.dart';

TextTheme textTheme() {
  return TextTheme(
      headline4:
          GoogleFonts.nanumGothic(fontSize: 30, fontWeight: FontWeight.bold,  color: CustomColorscheme.fontColor),
      headline5:
          GoogleFonts.nanumGothic(fontSize: 26, fontWeight: FontWeight.bold, color: CustomColorscheme.fontColor),
      headline6:
          GoogleFonts.nanumGothic(fontSize: 18, fontWeight: FontWeight.bold, color: CustomColorscheme.fontColor),
      bodyText1: GoogleFonts.nanumGothic(fontSize: 16, color: CustomColorscheme.fontColor),
      bodyText2: GoogleFonts.nanumGothic(fontSize: 15, color: CustomColorscheme.fontColor),
      subtitle1: GoogleFonts.nanumGothic(fontSize: 17, fontWeight: FontWeight.bold, color: CustomColorscheme.fontColor),
      subtitle2: GoogleFonts.nanumGothic(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54),
      button: GoogleFonts.nanumGothic(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      caption: GoogleFonts.nanumGothic(fontSize: 12),
      overline: GoogleFonts.nanumGothic(fontSize: 10));
}

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xff30B18A),
    textTheme: textTheme(),
  );
}
