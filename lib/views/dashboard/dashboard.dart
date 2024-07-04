import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const CircleAvatar(backgroundColor: Colors.red)
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ReUsableContainer(
                      height: 150,
                      color: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        image: AssetImage('assets/images/puppy.png'),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextWidget(
                              text: 'Active Listing',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomTextWidget(
                              text: '16',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReUsableContainer(
                      height: 150,
                      color: Colors.white,
                      padding: EdgeInsets.all(12.0),
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        image: AssetImage('assets/images/orders.png'),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextWidget(
                              text: 'Orders',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomTextWidget(
                              text: '03',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: ReUsableContainer(
                      height: 110,
                      color: Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                CustomTextWidget(
                                  text: 'Subscriptions',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                            const Divider(),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Current Plan: ',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.blueTextColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Plan Name',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.blueTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Expiry Date: ',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.blueTextColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '22 Feb 2024',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.blueTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReUsableContainer(
                      height: 110,
                      color: Colors.white,
                      padding: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                                child: Image.asset('assets/images/adds.png')),
                            const CustomTextWidget(
                              text: 'Create Ad',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: ReUsableContainer(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          visualDensity: VisualDensity.compact,
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('assets/images/clicks.png'),
                          title: CustomTextWidget(
                            text: 'CLICKS',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            textColor: AppColors.lightGreyColor,
                          ),
                          subtitle: const CustomTextWidget(
                            text: '1000',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReUsableContainer(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          visualDensity: VisualDensity.compact,
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('assets/images/likes.png'),
                          title: CustomTextWidget(
                            text: 'LIKES',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            textColor: AppColors.lightGreyColor,
                          ),
                          subtitle: const CustomTextWidget(
                            text: '64',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: ReUsableContainer(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          visualDensity: VisualDensity.compact,
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('assets/images/favourites.png'),
                          title: CustomTextWidget(
                            text: 'FAVOURITES',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            textColor: AppColors.lightGreyColor,
                          ),
                          subtitle: const CustomTextWidget(
                            text: '85',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReUsableContainer(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          visualDensity: VisualDensity.compact,
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('assets/images/views.png'),
                          title: CustomTextWidget(
                            text: 'VIEWS',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            textColor: AppColors.lightGreyColor,
                          ),
                          subtitle: const CustomTextWidget(
                            text: '436',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const ReUsableContainer(
                height: double.infinity,
                width: double.infinity,
                color: Colors.blueAccent,
                padding: EdgeInsets.all(8.0),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
