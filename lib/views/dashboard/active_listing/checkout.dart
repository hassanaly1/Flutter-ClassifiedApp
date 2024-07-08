import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:classified_app/views/subscriptions/success.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutsScreen extends StatelessWidget {
  const CheckoutsScreen({super.key});

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
            text: 'Checkout',
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
                  return const CustomCheckoutOrderWidget();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomTextWidget(
                        text: 'Delivery Address:',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        textColor: Colors.black,
                      ),
                      CustomTextWidget(
                        text: 'Change',
                        fontSize: 10.0,
                        textColor: AppColors.buttonPrimaryColor,
                      ),
                    ],
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    leading: Image.asset('assets/images/location.png'),
                    title: const CustomTextWidget(
                      text:
                          '123 Puppy Lane Happy Town, PA 19000, California USA  ',
                      fontSize: 11.0,
                      maxLines: 2,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.black,
                    ),
                  ),
                  const Divider(thickness: 2.0),
                  const CustomTextWidget(
                    text: 'Payment Method:',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    textColor: Colors.black,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    leading: Image.asset('assets/images/payment.png'),
                    title: const CustomTextWidget(
                      text: 'Cash on delivery (COD)',
                      fontSize: 11.0,
                      maxLines: 2,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.black,
                    ),
                    trailing: Icon(
                      CupertinoIcons.checkmark_alt_circle_fill,
                      color: AppColors.buttonPrimaryColor,
                    ),
                  ),
                  const Divider(thickness: 2.0),
                  const CustomTextWidget(
                    text: 'Order Info:',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    textColor: Colors.black,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(
                        text: 'Subtotal:',
                        fontSize: 12.0,
                        textColor: Colors.black,
                      ),
                      CustomTextWidget(
                        text: '\$57.70',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(
                        text: 'Delivery Charges:',
                        fontSize: 12.0,
                        textColor: Colors.black,
                      ),
                      CustomTextWidget(
                        text: '2.70',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  const Divider(thickness: 2.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(
                        text: 'Total:',
                        fontSize: 12.0,
                        textColor: Colors.black,
                      ),
                      CustomTextWidget(
                        text: '\$57.70',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(
                            () => const SuccessScreen(
                                  title: 'Order Confirmed!',
                                  subtitle:
                                      'Your Order has been confirmed, we will send you confirmation email shortly.',
                                  imagePath: 'assets/images/success.png',
                                ),
                            transition: Transition.rightToLeft);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: AppColors.buttonPrimaryColor,
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: CustomTextWidget(
                              text: 'Order Now',
                              fontWeight: FontWeight.w600,
                              fontSize: 10.0,
                              textColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCheckoutOrderWidget extends StatelessWidget {
  const CustomCheckoutOrderWidget({
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
                        text: 'Order Id:',
                        fontSize: 10.0,
                        fontWeight: FontWeight.w300,
                        textColor: Colors.black,
                      ),
                      SizedBox(height: 2.0),
                      CustomTextWidget(
                        text: 'NFFWF984QJNBJK',
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.plus_circle_fill,
                    color: AppColors.buttonPrimaryColor,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: CustomTextWidget(
                      text: '1',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.minus_circle,
                    color: AppColors.buttonPrimaryColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
