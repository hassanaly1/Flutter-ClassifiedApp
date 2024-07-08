import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/views/dashboard/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/success.png'),
                const SizedBox(height: 20.0),
                const CustomTextWidget(
                  text: 'Congratulations!',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  textColor: Color(0XFF475569),
                ),
                const SizedBox(height: 20.0),
                const CustomTextWidget(
                  text:
                      'Your Subscription has been purchased, we will send you confirmation email shortly.',
                  fontSize: 12.0,
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  textColor: Color(0XFF475569),
                ),
                const SizedBox(height: 20.0),
                CustomButton(
                  buttonText: 'Go To Home',
                  onTap: () {
                    Get.to(() => const BottomBar(),
                        transition: Transition.rightToLeft);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
