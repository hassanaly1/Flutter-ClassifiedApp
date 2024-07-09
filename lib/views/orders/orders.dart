import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:classified_app/views/dashboard/create_ad.dart';
import 'package:classified_app/views/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

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
        drawer: MyDrawerWidget(),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CustomOrderWidget();
          },
        ),
      ),
    );
  }
}

class CustomOrderWidget extends StatelessWidget {
  const CustomOrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ReUsableContainer(
        showBackgroundShadow: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextWidget(
                      text: 'Dog Name',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 2.0),
                    CustomTextWidget(
                      text: '\$57.70',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 2.0),
                    CustomTextWidget(
                      text: 'Cash on delivery',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(height: 2.0),
                  ],
                ),
              ],
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomTextWidget(
                  text: '12-04-2024',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
                SizedBox(height: 16.0),
                CustomTextWidget(
                  text: 'Order Status:',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                ),
                SizedBox(height: 2.0),
                CustomSecondaryButton(text: 'Completed')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
