import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFF2B67B1),
              Color(0xFF2B67B1),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: context.height * 0.1),
              Image.asset(
                'assets/images/app-logo.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/dog-walking.png',
                fit: BoxFit.cover,
                height: context.height * 0.4,
              ),
              Text(
                'Welcome To Pupify App',
                style: GoogleFonts.fugazOne(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomButton(
                buttonText: 'Sign Up',
                width: context.width * 0.5,
                onTap: () {},
              ),
              CustomButton(
                buttonText: 'Login',
                buttonColor: AppColors.textColor,
                textColor: AppColors.buttonPrimaryColor,
                width: context.width * 0.5,
                onTap: () {
                  Get.offAll(() => const LoginScreen());
                },
              ),
              SizedBox(height: context.height * 0.05),
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
            ],
          ),
        ),
      )),
    );
  }
}
