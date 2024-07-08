import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/views/dashboard/reusable_widgets/heading_and_textfield.dart';
import 'package:classified_app/views/subscriptions/success.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.textColor,
          forceMaterialTransparency: true,
          title: const CustomTextWidget(
            text: 'Payment Method',
            textColor: Colors.black,
            fontSize: 16.0,
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => Get.back(),
              icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.blackTextColor)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20.0,
                  color: AppColors.blackTextColor,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: 'Saved',
                  textColor: AppColors.blackTextColor,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  leading: Image.asset('assets/images/visa.png'),
                  title: CustomTextWidget(
                    text: '**** **** **** 1234',
                    textColor: AppColors.blackTextColor,
                  ),
                  trailing: Radio(
                    value: false,
                    groupValue: true,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  leading: Image.asset('assets/images/mastercard.png'),
                  title: CustomTextWidget(
                    text: '**** **** **** 6789',
                    textColor: AppColors.blackTextColor,
                  ),
                  trailing: Radio(
                    value: false,
                    groupValue: true,
                    onChanged: (value) {},
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                Center(
                  child: CustomTextWidget(
                    text: 'Add new card',
                    textColor: AppColors.blackTextColor,
                  ),
                ),
                const HeadingAndTextfield(title: 'Card Owner'),
                const HeadingAndTextfield(title: 'Card Number'),
                const Row(
                  children: [
                    Flexible(child: HeadingAndTextfield(title: 'EXP')),
                    Flexible(child: HeadingAndTextfield(title: 'CVV')),
                  ],
                ),
                ListTile(
                  title: CustomTextWidget(
                    text: 'Save Card Info',
                    textColor: AppColors.blackTextColor,
                  ),
                  trailing: Switch.adaptive(
                    activeColor: Colors.white,
                    activeTrackColor: AppColors.buttonPrimaryColor,
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                CustomButton(
                  buttonText: 'Process',
                  onTap: () {
                    Get.to(() => const SuccessScreen(),
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
