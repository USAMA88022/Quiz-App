import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_api_app/constant/colors.dart';

Widget normalText(String text, Color? color, double? size) {
  return Text(
    text,
    style: GoogleFonts.quicksand(color: color, fontSize: size),
  );
}

Widget headingText(String text, Color? color, double? size, String? bold) {
  return Text(text,
      style: GoogleFonts.quicksand(
          color: color, fontSize: size, fontWeight: FontWeight.bold));
}
