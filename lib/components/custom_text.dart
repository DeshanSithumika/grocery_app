import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class CoustomText extends StatelessWidget {
  const CoustomText(
    this.text, {
    this.fontSize = 30,
    this.fontWeight = FontWeight.w600,
    this.color = AppColors.primaryColor,
    this.textAlign = TextAlign.center,
    Key? key,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
      textAlign: TextAlign.center,
    );
  }
}
