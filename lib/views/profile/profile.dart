import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/views/dashboard/create_ad.dart';
import 'package:classified_app/views/dashboard/dashboard.dart';
import 'package:classified_app/views/profile/store_verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  List<String> items = [
    "Profile",
    "Payment Methods",
    "My Orders",
    "Settings",
    'Help Center',
    'Privacy Policy',
  ];

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
        drawer: const MyDrawerWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomUserCard(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return CustomProfileWidget(
                      title: items[index],
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const StoreVerificationScreen(),
                      transition: Transition.rightToLeft);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: const Color(0XFF5790FF),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const CustomTextWidget(
                                      text: 'Get Verified',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      textColor: Colors.white,
                                    ),
                                    Image.asset('assets/images/verified.png'),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  child: const CustomTextWidget(
                                    text: 'Gain the trust',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Image.asset('assets/images/apply_now.png'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: CustomButton(
                  buttonText: 'Sign Out',
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomProfileWidget extends StatelessWidget {
  final String title;

  const CustomProfileWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
      child: Row(
        children: [
          CustomTextWidget(
            text: title,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            textColor: const Color(0XFF444444),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_rounded,
            color: AppColors.buttonPrimaryColor,
          )
        ],
      ),
    );
  }
}

class CustomUserCard extends StatelessWidget {
  const CustomUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Container(
        height: 170,
        color: Colors.transparent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: context.width * 0.2),
                height: 120,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0XFFFFAF78),
                      Color(0XFFF36604),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextWidget(
                      text: 'D Heaven',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 8.0),
                    CustomTextWidget(
                      text: 'otiswudaris007@gmail.com',
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.white,
                    ),
                    SizedBox(height: 8.0),
                    SizedBox(
                        width: 150,
                        child: CustomSecondaryButton(text: 'My Profile')),
                    SizedBox(height: 8.0),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              child: CircleAvatar(
                radius: 40,
                child: Image.asset('assets/images/store_profile.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
