import 'package:classified_app/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Color? textColor;
  final Color? buttonColor;
  final Color? borderColor;
  final double width;
  final double? height;
  final double? fontSize;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.width = double.infinity,
    this.textColor,
    this.borderColor,
    this.height,
    this.fontSize,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: width,
            height: height ?? 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: buttonColor ?? AppColors.buttonPrimaryColor,
              border: Border.all(
                color: borderColor ?? AppColors.buttonPrimaryColor,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 5.0),
                ),
              ],
            ),
            child: Center(
              child: Text(
                buttonText,
                style: GoogleFonts.poppins(
                  fontSize: fontSize ?? 16,
                  color: textColor ?? AppColors.textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ));
  }
}
