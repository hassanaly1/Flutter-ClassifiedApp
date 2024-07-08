import 'package:classified_app/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final int? maxLines;

  const CustomTextWidget({
    super.key,
    required this.text,
    this.textColor,
    this.textAlign,
    this.fontSize,
    this.maxLines,
    this.fontWeight,
    this.fontStyle,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        decoration: decoration,
        fontStyle: fontStyle ?? FontStyle.normal,
        fontSize: fontSize ?? 12.0,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: textColor ?? AppColors.blueTextColor,
      ),
    );
  }
}
