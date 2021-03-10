import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static const Color big_text_color = Color(0xff4D4D4D);
  static const Color PRIMARY_COLOR_LIGHT = Color(0xFFA5CFF1);
  static const Color navigation_Button_color = Color(0xffA7A6A2);
  static const Color BottomBar_Color = Color(0xffE83556);
  static const Color desktopTextcolor = Color(0xff4d4d4d);
}

TextStyle buttonTextStyle = GoogleFonts.montserrat(
    textStyle: TextStyle(
        fontSize: 14,
        letterSpacing: 1,
        fontWeight: FontWeight.w500,
        color: Colors.black54));

TextStyle desktopBodyText = GoogleFonts.noticiaText(
    color: Colors.black,
    fontSize: 90,
    letterSpacing: 3,
    fontWeight: FontWeight.w900);
TextStyle desktopBodyText2 = GoogleFonts.noticiaText(
    color: Colors.black,
    fontSize: 40,
    letterSpacing: 3,
    fontWeight: FontWeight.w700);
