import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAdScreen extends StatelessWidget {
  const CreateAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.textColor,
        appBar: AppBar(
          backgroundColor: AppColors.textColor,
          forceMaterialTransparency: true,
          title: Image.asset(
            'assets/images/app-logo.png',
            height: 30,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add),
            ),
            IconButton(
              onPressed: () {
                Get.back();
              },
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
        drawer: const Drawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: 'Create Ad',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  textColor: AppColors.buttonPrimaryColor,
                ),
                Divider(),
                const SizedBox(height: 12.0),
                const CustomTextWidget(
                  text: 'Select Product',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
                ReUsableContainer(
                  showBackgroundShadow: false,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/done.png'),
                            const SizedBox(width: 8.0),
                            CustomTextWidget(
                              text: 'Select Product',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              textColor: AppColors.lightTextColor,
                            ),
                          ],
                        ),
                        const CustomSecondaryButton(text: 'Select'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                ReUsableContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextWidget(
                        text: 'Ad Details',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                      const CustomTextWidget(
                        text: 'Target Location',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: context.height * 0.01),
                      const CustomTextWidget(
                        text: 'Set Audience Location',
                        fontWeight: FontWeight.w500,
                        maxLines: 1,
                        fontSize: 12,
                      ),
                      ReUsableContainer(
                        showBackgroundShadow: false,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/doggy.png'),
                                  const SizedBox(width: 6.0),
                                  CustomTextWidget(
                                    text: 'Set Location',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    textColor: AppColors.lightTextColor,
                                  ),
                                ],
                              ),
                              const CustomSecondaryButton(text: 'Select'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: context.height * 0.01),
                      const CustomTextWidget(
                        text: 'Set Ad Duration',
                        fontWeight: FontWeight.w500,
                        maxLines: 1,
                        fontSize: 12,
                      ),
                      ReUsableContainer(
                        showBackgroundShadow: false,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/doggy.png'),
                                  const SizedBox(width: 6.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomTextWidget(
                                        text: 'Ad Duration',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        textColor: AppColors.lightTextColor,
                                      ),
                                      const SizedBox(height: 22.0),
                                      CustomTextWidget(
                                        text: 'Ad cost \$76 for --- days',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        textColor: AppColors.lightTextColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const CustomSecondaryButton(text: 'Select'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: context.height * 0.03),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: SizedBox(
              height: 40, child: CustomSecondaryButton(text: 'Submit')),
        ),
      ),
    );
  }
}

class CustomSecondaryButton extends StatelessWidget {
  final String text;

  const CustomSecondaryButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.blueTextColor,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: CustomTextWidget(
            text: text,
            fontWeight: FontWeight.w600,
            fontSize: 10.0,
            textColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
