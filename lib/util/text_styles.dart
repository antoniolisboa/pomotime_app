import 'package:pomotime_app/util/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static TextStyle regular = GoogleFonts.getFont(
    'Montserrat',
    color: AppColors.spaceCadet,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static TextStyle bold = GoogleFonts.getFont(
    'Montserrat',
    color: AppColors.spaceCadet,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
}
