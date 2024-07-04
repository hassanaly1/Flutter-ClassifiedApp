import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Container(
              // height: context.height * 0.5,
              width: context.width * 0.8,
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(22.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/app-logo.png',
                      height: 30,
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    'Verification.',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: context.height * 0.01),
                  Text(
                    'Enter your 6 digit OTP code we sent to your email address',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.lightGreyColor,
                    ),
                  ),
                  SizedBox(height: context.height * 0.01),
                  Pinput(
                    length: 6,
                    onCompleted: (pin) => print(pin),
                  ),
                  SizedBox(height: context.height * 0.01),
                  CustomButton(
                    buttonText: 'Verify',
                    onTap: () {
                      Get.offAll(
                        () => const LoginScreen(),
                        transition: Transition.size,
                        duration: const Duration(seconds: 1),
                      );
                    },
                  ),
                  SizedBox(height: context.height * 0.01),
                  Text(
                    'Didn’t receive the code? ',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: context.height * 0.01),
                  Text(
                    'Re-send OTP Code in 23.s',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: AppColors.buttonPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Text(
            '© 2024 | Pupify.ca All Rights Reserved',
            style: GoogleFonts.plusJakartaSans(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Privacy Policy   Terms Conditions',
            style: GoogleFonts.plusJakartaSans(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: context.height * 0.02),
        ],
      ),
    );
  }
}
