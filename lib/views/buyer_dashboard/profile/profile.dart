import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_button.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/views/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyerProfileScreen extends StatelessWidget {
  BuyerProfileScreen({super.key});

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
        drawer: MyDrawerWidget(),
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
        height: 180,
        color: Colors.transparent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
                height: 130,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0XFF0066CC),
                      Color(0XFF003366),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CustomTextWidget(
                              text: 'My Wishlist',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              textColor: Colors.white,
                            ),
                            CustomTextWidget(
                              text: '6',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                        CustomTextWidget(
                          text: 'Otis. Wu',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.white,
                        ),
                        Column(
                          children: [
                            CustomTextWidget(
                              text: 'My Connections',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              textColor: Colors.white,
                            ),
                            CustomTextWidget(
                              text: '106',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    const CustomTextWidget(
                      text: 'otiswudaris007@gmail.com',
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: AppColors.blueTextColor),
                        color: AppColors.buttonPrimaryColor,
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: CustomTextWidget(
                            text: 'My Profile',
                            fontWeight: FontWeight.w600,
                            fontSize: 10.0,
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
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
