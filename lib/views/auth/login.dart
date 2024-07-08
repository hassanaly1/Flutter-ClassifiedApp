import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/views/auth/reset_password.dart';
import 'package:classified_app/views/auth/signup.dart';
import 'package:classified_app/views/dashboard/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: context.height * 0.05),
                Center(
                  child: Container(
                    width: context.width * 0.8,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 16.0),
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
                        Text(
                          'Sign In To Your Account.',
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: context.height * 0.01),
                        Text(
                          'Enter your Email and Password.',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.lightGreyColor,
                          ),
                        ),
                        SizedBox(height: context.height * 0.01),
                        Text(
                          'Email Address',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackTextColor,
                          ),
                        ),
                        SizedBox(height: context.height * 0.01),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.lightGreyColor),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            hintText: 'Email Address',
                            prefixIcon: const Icon(Icons.email_outlined),
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              color: AppColors.lightTextColor,
                            ),
                          ),
                        ),
                        SizedBox(height: context.height * 0.01),
                        Text(
                          'Password',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackTextColor,
                          ),
                        ),
                        SizedBox(height: context.height * 0.01),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.lightGreyColor),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            hintText: 'Password',
                            prefixIcon: const Icon(Icons.lock),
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              color: AppColors.lightTextColor,
                            ),
                          ),
                        ),
                        CheckboxListTile(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          value: true,
                          onChanged: (value) {},
                          controlAffinity: ListTileControlAffinity.leading,
                          checkColor: AppColors.textColor,
                          fillColor:
                              WidgetStateProperty.all(AppColors.primaryColor),
                          title: Text(
                            'Remember',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackTextColor,
                            ),
                          ),
                        ),
                        CustomButton(
                          buttonText: 'Sign In',
                          onTap: () {
                            Get.offAll(
                              () => const BottomBar(),
                              transition: Transition.size,
                              duration: const Duration(seconds: 1),
                            );
                          },
                        ),
                        SizedBox(height: context.height * 0.01),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                () => const SignupScreen(),
                                transition: Transition.size,
                                duration: const Duration(seconds: 1),
                              );
                            },
                            child: Text.rich(
                              TextSpan(
                                text: 'Dont have an account? ',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Signup',
                                    style: GoogleFonts.poppins(
                                      color: AppColors.buttonPrimaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                            child: TextButton(
                          onPressed: () {
                            Get.to(
                              () => const ResetPassword(),
                              transition: Transition.size,
                              duration: const Duration(seconds: 1),
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.buttonPrimaryColor,
                            ),
                          ),
                        )),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: AppColors.lightGreyColor,
                              ),
                            ),
                            Text(
                              ' OR ',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGreyColor,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: AppColors.lightGreyColor,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: AppColors.textColor,
                                  border: Border.all(
                                    color: AppColors.lightGreyColor,
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/google.png'),
                                      const SizedBox(width: 12.0),
                                      Text(
                                        'Sign In with Google',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: AppColors.buttonPrimaryColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: context.height * 0.1),
                Text(
                  '© 2024 | Pupify.ca All Rights Reserved',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Privacy Policy   Terms Conditions',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: context.height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
