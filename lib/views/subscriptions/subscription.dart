import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:classified_app/views/dashboard/dashboard.dart';
import 'package:classified_app/views/subscriptions/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
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
          body: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  // SliverToBoxAdapter(child: Header()),
                  SliverToBoxAdapter(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: context.height * 0.03),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0XFFEEF2FF),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextWidget(
                              text: 'Our Pricing',
                              fontWeight: FontWeight.w500,
                              textColor: AppColors.buttonPrimaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: context.height * 0.03),
                        const CustomTextWidget(
                          text: 'Subscription Packages',
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          textColor: Colors.black,
                        ),
                        SizedBox(height: context.height * 0.01),
                        CustomTextWidget(
                          text: 'Choose the plan that best fits your needs',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          textColor: AppColors.lightTextColor,
                        ),
                        const CustomTabBar(
                          title1: 'Monthly',
                          title2: 'Yearly',
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ReUsableContainer(
                              showBackgroundShadow: false,
                              width: context.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextWidget(
                                      text: 'Basic Plan',
                                      textColor: AppColors.buttonPrimaryColor,
                                    ),
                                    const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CustomTextWidget(
                                          text: '\$15',
                                          fontSize: 30.0,
                                          textColor: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        CustomTextWidget(
                                          text: ' /month',
                                          fontSize: 14.0,
                                        ),
                                      ],
                                    ),
                                    const CustomTextWidget(
                                      text:
                                          'Ideal for small-scale sellers who are just getting started.',
                                      fontSize: 14.0,
                                      maxLines: 2,
                                      fontWeight: FontWeight.w300,
                                      textColor: Colors.black54,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Divider(),
                                    ),
                                    const CustomPlanAttribute(
                                        title: 'Create up to 5 listings'),
                                    const CustomPlanAttribute(
                                        title:
                                            'Upload up to 10 photos per listing'),
                                    const CustomPlanAttribute(
                                        title: 'Basic customer support'),
                                    const CustomPlanAttribute(
                                        isHighlighted: false,
                                        title:
                                            'Access to in-app chat with buyers'),
                                    const MyAddCartButton(
                                      isPurchased: true,
                                      buttonText: 'Purchase',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ReUsableContainer(
                              showBackgroundShadow: false,
                              width: context.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomTextWidget(
                                          text: 'Pro Plan',
                                          textColor:
                                              AppColors.buttonPrimaryColor,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0XFFEEF2FF),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomTextWidget(
                                              text: '10% OFF',
                                              fontWeight: FontWeight.w500,
                                              textColor:
                                                  AppColors.buttonPrimaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CustomTextWidget(
                                          text: '\$35',
                                          fontSize: 30.0,
                                          textColor: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        CustomTextWidget(
                                          text: ' /month',
                                          fontSize: 14.0,
                                        ),
                                      ],
                                    ),
                                    const CustomTextWidget(
                                      text:
                                          'Best for growing sellers who need more features.',
                                      fontSize: 14.0,
                                      maxLines: 2,
                                      fontWeight: FontWeight.w300,
                                      textColor: Colors.black54,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Divider(),
                                    ),
                                    const CustomPlanAttribute(
                                        title: 'Create up to 20 listings'),
                                    const CustomPlanAttribute(
                                        title:
                                            'Upload up to 20 photos per listing'),
                                    const CustomPlanAttribute(
                                        title: 'Priority customer support'),
                                    const CustomPlanAttribute(
                                        title:
                                            'Access to in-app chat with buyers'),
                                    const CustomPlanAttribute(
                                        isHighlighted: false,
                                        title:
                                            'Access to in-app chat with buyers'),
                                    const MyAddCartButton(
                                      isPurchased: false,
                                      buttonText: 'Add to Cart',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ReUsableContainer(
                              showBackgroundShadow: false,
                              width: context.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextWidget(
                                      text: 'Enterprise Plan',
                                      textColor: AppColors.buttonPrimaryColor,
                                    ),
                                    const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CustomTextWidget(
                                          text: '\$45',
                                          fontSize: 30.0,
                                          textColor: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        CustomTextWidget(
                                          text: ' /month',
                                          fontSize: 14.0,
                                        ),
                                      ],
                                    ),
                                    const CustomTextWidget(
                                      text:
                                          'Perfect for established sellers with high-volume listings.',
                                      fontSize: 14.0,
                                      maxLines: 2,
                                      fontWeight: FontWeight.w300,
                                      textColor: Colors.black54,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Divider(),
                                    ),
                                    const CustomPlanAttribute(
                                        title: 'Unlimited listings'),
                                    const CustomPlanAttribute(
                                        title:
                                            'Upload up to 30 photos per listing'),
                                    const CustomPlanAttribute(
                                        title: 'Dedicated customer support'),
                                    const CustomPlanAttribute(
                                        isHighlighted: false,
                                        title:
                                            'Access to in-app chat with buyers'),
                                    const MyAddCartButton(
                                      isPurchased: false,
                                      buttonText: 'Add to Cart',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ReUsableContainer(
                              showBackgroundShadow: false,
                              width: context.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextWidget(
                                      text: 'Basic Plan',
                                      textColor: AppColors.buttonPrimaryColor,
                                    ),
                                    const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CustomTextWidget(
                                          text: '\$125',
                                          fontSize: 30.0,
                                          textColor: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        CustomTextWidget(
                                          text: ' /year',
                                          fontSize: 14.0,
                                        ),
                                      ],
                                    ),
                                    const CustomTextWidget(
                                      text:
                                          'Ideal for small-scale sellers who are just getting started.',
                                      fontSize: 14.0,
                                      maxLines: 2,
                                      fontWeight: FontWeight.w300,
                                      textColor: Colors.black54,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Divider(),
                                    ),
                                    const CustomPlanAttribute(
                                        title: 'Create up to 5 listings'),
                                    const CustomPlanAttribute(
                                        title:
                                            'Upload up to 10 photos per listing'),
                                    const CustomPlanAttribute(
                                        title: 'Basic customer support'),
                                    const CustomPlanAttribute(
                                        isHighlighted: false,
                                        title:
                                            'Access to in-app chat with buyers'),
                                    const MyAddCartButton(
                                      isPurchased: false,
                                      buttonText: 'Purchase',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ReUsableContainer(
                              showBackgroundShadow: false,
                              width: context.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomTextWidget(
                                          text: 'Pro Plan',
                                          textColor:
                                              AppColors.buttonPrimaryColor,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0XFFEEF2FF),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomTextWidget(
                                              text: '20% OFF',
                                              fontWeight: FontWeight.w500,
                                              textColor:
                                                  AppColors.buttonPrimaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CustomTextWidget(
                                          text: '\$135',
                                          fontSize: 30.0,
                                          textColor: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        CustomTextWidget(
                                          text: ' /year',
                                          fontSize: 14.0,
                                        ),
                                      ],
                                    ),
                                    const CustomTextWidget(
                                      text:
                                          'Best for growing sellers who need more features.',
                                      fontSize: 14.0,
                                      maxLines: 2,
                                      fontWeight: FontWeight.w300,
                                      textColor: Colors.black54,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Divider(),
                                    ),
                                    const CustomPlanAttribute(
                                        title: 'Create up to 20 listings'),
                                    const CustomPlanAttribute(
                                        title:
                                            'Upload up to 20 photos per listing'),
                                    const CustomPlanAttribute(
                                        title: 'Priority customer support'),
                                    const CustomPlanAttribute(
                                        title:
                                            'Access to in-app chat with buyers'),
                                    const CustomPlanAttribute(
                                        isHighlighted: false,
                                        title:
                                            'Access to in-app chat with buyers'),
                                    const MyAddCartButton(
                                      isPurchased: false,
                                      buttonText: 'Add to Cart',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ReUsableContainer(
                              showBackgroundShadow: false,
                              width: context.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextWidget(
                                      text: 'Enterprise Plan',
                                      textColor: AppColors.buttonPrimaryColor,
                                    ),
                                    const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CustomTextWidget(
                                          text: '\$245',
                                          fontSize: 30.0,
                                          textColor: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        CustomTextWidget(
                                          text: ' /year',
                                          fontSize: 14.0,
                                        ),
                                      ],
                                    ),
                                    const CustomTextWidget(
                                      text:
                                          'Perfect for established sellers with high-volume listings.',
                                      fontSize: 14.0,
                                      maxLines: 2,
                                      fontWeight: FontWeight.w300,
                                      textColor: Colors.black54,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Divider(),
                                    ),
                                    const CustomPlanAttribute(
                                        title: 'Unlimited listings'),
                                    const CustomPlanAttribute(
                                        title:
                                            'Upload up to 30 photos per listing'),
                                    const CustomPlanAttribute(
                                        title: 'Dedicated customer support'),
                                    const CustomPlanAttribute(
                                        isHighlighted: false,
                                        title:
                                            'Access to in-app chat with buyers'),
                                    const MyAddCartButton(
                                      isPurchased: false,
                                      buttonText: 'Add to Cart',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          // body: Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     SizedBox(height: context.height * 0.03),
          //     Container(
          //       decoration: BoxDecoration(
          //         color: const Color(0XFFEEF2FF),
          //         borderRadius: BorderRadius.circular(20.0),
          //       ),
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: CustomTextWidget(
          //           text: 'Our Pricing',
          //           fontWeight: FontWeight.w500,
          //           textColor: AppColors.buttonPrimaryColor,
          //         ),
          //       ),
          //     ),
          //     SizedBox(height: context.height * 0.03),
          //     const CustomTextWidget(
          //       text: 'Subscription Packages',
          //       fontWeight: FontWeight.bold,
          //       fontSize: 24.0,
          //       textColor: Colors.black,
          //     ),
          //     SizedBox(height: context.height * 0.01),
          //     CustomTextWidget(
          //       text: 'Choose the plan that best fits your needs',
          //       fontWeight: FontWeight.w500,
          //       fontSize: 12.0,
          //       textColor: AppColors.lightTextColor,
          //     ),
          //     const CustomTabBar(
          //       title1: 'Monthly',
          //       title2: 'Yearly',
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

class MyAddCartButton extends StatelessWidget {
  final String buttonText;
  final bool isPurchased;

  const MyAddCartButton({
    super.key,
    required this.buttonText,
    required this.isPurchased,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => const PaymentScreen(),
          transition: Transition.rightToLeft),
      child: Container(
        decoration: BoxDecoration(
          color: isPurchased
              ? const Color(0XFFEEF2FF)
              : AppColors.buttonPrimaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: buttonText,
                fontWeight: FontWeight.w500,
                textColor: isPurchased
                    ? AppColors.buttonPrimaryColor
                    : const Color(0XFFEEF2FF),
              ),
              const SizedBox(width: 6.0),
              Icon(
                CupertinoIcons.shopping_cart,
                color: isPurchased
                    ? AppColors.buttonPrimaryColor
                    : const Color(0XFFEEF2FF),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPlanAttribute extends StatelessWidget {
  final String title;
  final bool isHighlighted;

  const CustomPlanAttribute({
    super.key,
    required this.title,
    this.isHighlighted = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        CupertinoIcons.checkmark_alt_circle_fill,
        color:
            isHighlighted ? AppColors.buttonPrimaryColor : Colors.grey.shade200,
      ),
      title: CustomTextWidget(
        text: title,
        fontSize: 14.0,
        textColor: isHighlighted ? const Color(0XFF475569) : Colors.black26,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final String title1;
  final String title2;

  const CustomTabBar({
    super.key,
    required this.title1,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        width: Get.width,
        decoration: BoxDecoration(
            color: const Color(0XFFF8FAFC),
            borderRadius: BorderRadius.circular(32.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBar(
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            labelStyle: GoogleFonts.poppins(
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: title1),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(title2),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFFEEF2FF),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: CustomTextWidget(
                          text: '20% OFF',
                          fontWeight: FontWeight.w500,
                          textColor: Colors.redAccent,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
