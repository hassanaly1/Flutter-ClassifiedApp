import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/views/auth/change_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Reset Your Password.',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: context.height * 0.01),
                  Center(
                    child: Text(
                      'Please enter your Email address',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.lightGreyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: context.height * 0.01),
                  Text(
                    'Email Address',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  SizedBox(height: context.height * 0.01),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.lightGreyColor),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: 'Email Address',
                      prefixIcon: const Icon(Icons.email_outlined),
                      hintStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        color: AppColors.lightTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: context.height * 0.01),
                  CustomButton(
                    buttonText: 'Reset Password',
                    onTap: () {
                      Get.to(
                        () => const ChangePasswordScreen(),
                        transition: Transition.size,
                        duration: const Duration(seconds: 1),
                      );
                    },
                  ),
                  SizedBox(height: context.height * 0.01),
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
