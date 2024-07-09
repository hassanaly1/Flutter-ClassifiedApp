import 'package:classified_app/controllers/universal_controller.dart';
import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/views/buyer_dashboard/buyer_bottombar.dart';
import 'package:classified_app/views/dashboard/seller_bottombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  SuccessScreen(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle});

  final UniversalController controller = Get.find();

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
                Image.asset(imagePath),
                const SizedBox(height: 20.0),
                CustomTextWidget(
                  text: title,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  textColor: const Color(0XFF475569),
                ),
                const SizedBox(height: 20.0),
                CustomTextWidget(
                  text: subtitle,
                  fontSize: 12.0,
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  textColor: const Color(0XFF475569),
                ),
                const SizedBox(height: 20.0),
                CustomButton(
                  buttonText: 'Go To Home',
                  onTap: () {
                    controller.isSeller.value
                        ? Get.offAll(() => const SellerBottomBar(),
                            transition: Transition.rightToLeft)
                        : Get.offAll(() => const BuyerBottomBar(),
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
