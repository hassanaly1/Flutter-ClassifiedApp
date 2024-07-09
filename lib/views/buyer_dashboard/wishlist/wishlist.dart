import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:classified_app/views/messages/message_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.textColor,
          forceMaterialTransparency: true,
          titleSpacing: 0.0,
          // leading: Image.asset('assets/images/chat.png'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const CustomTextWidget(
            text: 'Wishlist',
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            textColor: Colors.black,
          ),
          actions: [
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
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CustomWishlistWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomWishlistWidget extends StatelessWidget {
  const CustomWishlistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ReUsableContainer(
        showBackgroundShadow: false,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
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
                        fontSize: 12.0,
                        textColor: Colors.black,
                      ),
                      SizedBox(height: 2.0),
                      CustomTextWidget(
                        text: '\$57.70',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        textColor: Colors.black,
                      ),
                      SizedBox(height: 2.0),
                      CustomTextWidget(
                        text: 'Date:',
                        fontSize: 10.0,
                        fontWeight: FontWeight.w300,
                        textColor: Colors.black,
                      ),
                      SizedBox(height: 2.0),
                      CustomTextWidget(
                        text: '12-07-2024',
                        fontSize: 10.0,
                        textColor: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.cancel_outlined,
                    color: AppColors.blueTextColor,
                  ),
                  const SizedBox(height: 12.0),
                  InkWell(
                    onTap: () => Get.to(() => const MessageDetailScreen(),
                        transition: Transition.rightToLeft),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.blueTextColor,
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: CustomTextWidget(
                            text: 'Message',
                            fontWeight: FontWeight.w600,
                            fontSize: 10.0,
                            textColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
