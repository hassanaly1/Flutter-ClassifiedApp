import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/views/dashboard/dashboard.dart';
import 'package:classified_app/views/dashboard/reusable_widgets/heading_and_textfield.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreVerificationScreen extends StatefulWidget {
  const StoreVerificationScreen({super.key});

  @override
  State<StoreVerificationScreen> createState() =>
      _StoreVerificationScreenState();
}

class _StoreVerificationScreenState extends State<StoreVerificationScreen> {
  PageController pageController = PageController(initialPage: 0);
  RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                currentPage.value == 0
                    ? Get.back()
                    : pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
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
        drawer: MyDrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Center(
                child: CustomTextWidget(
                  text: 'Store Verification',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: CustomTextWidget(
                  text:
                      'To ensure the safety and reliability of our platform, please complete the following verification steps.',
                  fontSize: 14.0,
                  maxLines: 3,
                  textColor: AppColors.lightTextColor,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: context.height * 0.02),
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    currentPage.value = value;
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 12.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50.0,
                              backgroundColor: AppColors.buttonPrimaryColor,
                              backgroundImage: const NetworkImage(
                                  'https://img.freepik.com/free-photo/close-up-portrait-curly-handsome-european-male_176532-8133.jpg?size=626&ext=jpg&uid=R133237588&ga=GA1.2.1091155359.1700008188&semt=ais'),
                            ),
                            const HeadingAndTextfield(
                              title: 'Store Name',
                              prefixIcon: Icon(Icons.store),
                            ),
                            const HeadingAndTextfield(
                              title: 'Owner’s Full Name',
                              prefixIcon: Icon(CupertinoIcons.person_fill),
                            ),
                            const HeadingAndTextfield(
                              title: 'Email Address',
                              prefixIcon: Icon(Icons.alternate_email_outlined),
                            ),
                            const HeadingAndTextfield(
                              title: 'Phone Number',
                              prefixIcon:
                                  Icon(CupertinoIcons.phone_circle_fill),
                            ),
                            const HeadingAndTextfield(
                              title: 'Store Address',
                              prefixIcon: Icon(Icons.location_on),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 12.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(12),
                                color: AppColors.lightGreyColor,
                                dashPattern: const [8, 4],
                                child: Container(
                                  height: 120,
                                  color: Colors.white,
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset('assets/images/upload.png'),
                                      const CustomTextWidget(
                                        text:
                                            'Please upload a recent utility bill, bank statement, or rental agreement showing the store address.',
                                        fontSize: 10.0,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                      ),
                                      const CustomTextWidget(
                                        text: 'Jpeg, png are allowed.',
                                        fontSize: 10.0,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const HeadingAndTextfield(
                              title: 'Store Description',
                              maxLines: 5,
                            ),
                            const HeadingAndTextfield(
                              title: 'Website URL',
                              prefixIcon: Icon(CupertinoIcons.person_fill),
                            ),
                            const HeadingAndTextfield(
                              title: 'Social Media Links',
                              prefixIcon: Icon(Icons.alternate_email_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Obx(
                  () => CustomButton(
                    buttonText: currentPage.value == 0 ? 'Next' : 'Submit',
                    onTap: () {
                      currentPage.value == 0
                          ? pageController.nextPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn)
                          : Get.back();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
