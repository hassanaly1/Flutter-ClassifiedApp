import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:classified_app/views/dashboard/active_listing/active_listing.dart';
import 'package:classified_app/views/dashboard/add_services.dart';
import 'package:classified_app/views/dashboard/bottombar.dart';
import 'package:classified_app/views/dashboard/create_ad.dart';
import 'package:classified_app/views/orders/orders.dart';
import 'package:classified_app/views/profile/profile.dart';
import 'package:classified_app/views/subscriptions/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  bool customDialRoot = true;
  bool extend = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/dashboard_bg.png',
            fit: BoxFit.fill,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
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
                InkWell(
                  onTap: () {
                    Get.to(() => ProfileScreen(),
                        transition: Transition.rightToLeft);
                  },
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/store_profile.png'),
                  ),
                )
              ],
            ),
            drawer: const MyDrawerWidget(),
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () => Get.to(() => const ActiveListing(),
                                transition: Transition.rightToLeft),
                            child: const ReUsableContainer(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => Get.to(() => const OrdersScreen(),
                                transition: Transition.rightToLeft),
                            child: const ReUsableContainer(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () => Get.to(
                              () => const SubscriptionScreen(),
                              transition: Transition.rightToLeft,
                            ),
                            child: ReUsableContainer(
                              color: Colors.white,
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: CustomTextWidget(
                                            text: 'Subscriptions',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        CustomSecondaryButton(
                                            text: 'Upgrade Plan')
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
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Plan Name',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.blueTextColor,
                                              fontSize: 12.0,
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
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '22 Feb 2024',
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.blueTextColor,
                                              fontSize: 12.0,
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
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () => Get.to(
                              () => const CreateAdScreen(),
                              transition: Transition.rightToLeft,
                            ),
                            child: ReUsableContainer(
                              height: 110,
                              color: Colors.white,
                              padding: const EdgeInsets.all(12.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Center(
                                        child: Image.asset(
                                            'assets/images/adds.png')),
                                    const FittedBox(
                                      child: CustomTextWidget(
                                        text: 'Create Ad',
                                        fontSize: 14.0,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ReUsableContainer(
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
                                leading:
                                    Image.asset('assets/images/favourites.png'),
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

                    // const ReUsableContainer(
                    //   height: double.infinity,
                    //   width: double.infinity,
                    //   color: Colors.blueAccent,
                    //   padding: EdgeInsets.all(8.0),
                    //   child: Padding(
                    //     padding: EdgeInsets.all(8.0),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endDocked,
            floatingActionButton: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SpeedDial(
                // animatedIcon: AnimatedIcons.add_event,
                animatedIconTheme: const IconThemeData(size: 22.0),
                icon: Icons.add,
                activeIcon: Icons.close,
                spacing: 3,
                openCloseDial: isDialOpen,
                childPadding: const EdgeInsets.all(5),
                spaceBetweenChildren: 4,

                buttonSize: const Size.fromRadius(35),
                iconTheme: const IconThemeData(size: 22),
                label: extend ? const Text("Open") : null,
                activeLabel: extend ? const Text("Close") : null,
                childrenButtonSize: const Size.fromRadius(35),
                visible: true,
                direction: SpeedDialDirection.up,
                switchLabelPosition: false,
                closeManually: false,

                renderOverlay: true,
                // onOpen: () => debugPrint('OPENING DIAL'),
                // onClose: () => debugPrint('DIAL CLOSED'),
                useRotationAnimation: true,
                foregroundColor: Colors.white,
                backgroundColor: AppColors.blueTextColor,
                activeForegroundColor: Colors.white,
                activeBackgroundColor: AppColors.blueTextColor,
                elevation: 8.0,
                animationCurve: Curves.elasticInOut,
                isOpenOnStart: false,
                animationDuration: const Duration(milliseconds: 300),
                // shape: customDialRoot
                //     ? const RoundedRectangleBorder()
                //     : const StadiumBorder(),
                // childMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                children: [
                  SpeedDialChild(
                    child: Image.asset('assets/images/pets.png'),
                    backgroundColor: AppColors.blueTextColor,
                    foregroundColor: Colors.white,
                    onTap: () {
                      Get.to(() => const AddServiceScreen(text: 'Service'));
                    },
                  ),
                  SpeedDialChild(
                    child: Image.asset('assets/images/checkroom.png'),
                    backgroundColor: AppColors.blueTextColor,
                    foregroundColor: Colors.white,
                    onTap: () {
                      Get.to(() => const AddServiceScreen(text: 'Boutique'));
                    },
                  ),
                  SpeedDialChild(
                    child: Image.asset('assets/images/self_care.png'),
                    backgroundColor: AppColors.blueTextColor,
                    foregroundColor: Colors.white,
                    onTap: () {
                      Get.to(() => const AddServiceScreen(text: 'Dog'));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/app-logo.png',
                  height: 30,
                ),
              ),
            ),
            CustomDrawerTile(
              title: 'Home',
              imagePath: 'assets/images/home.png',
              onTap: () => Get.to(() => const BottomBar()),
            ),
            const CustomDrawerTile(
              title: 'Tasks',
              imagePath: 'assets/images/tasks.png',
            ),
            // const CustomDrawerTile(
            //   title: 'Messages',
            //   imagePath: 'assets/images/message.png',
            // ),
            const CustomDrawerTile(
              title: 'APIs',
              imagePath: 'assets/images/apis.png',
            ),
            CustomDrawerTile(
              title: 'Subscriptions',
              imagePath: 'assets/images/subscriptions.png',
              onTap: () => Get.to(() => const SubscriptionScreen()),
            ),
            CustomDrawerTile(
              title: 'Settings',
              imagePath: 'assets/images/settings.png',
              onTap: () => Get.to(() => ProfileScreen()),
            ),
            const CustomDrawerTile(
              title: 'Help & Support',
              imagePath: 'assets/images/help.png',
            ),
            SizedBox(height: context.height * 0.08),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.buttonPrimaryColor,
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomTextWidget(
                        text: 'Go Pro',
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.white,
                      ),
                      Image.asset('assets/images/start.png'),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: Image.asset('assets/images/store_profile.png'),
              title: CustomTextWidget(
                text: 'Otis. Wu',
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                textColor: AppColors.buttonPrimaryColor,
              ),
              subtitle: CustomTextWidget(
                text: 'Basic Member',
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
                textColor: AppColors.lightTextColor,
              ),
              onTap: () {},
              trailing: const Icon(
                Icons.logout,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomDrawerTile extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback? onTap;

  const CustomDrawerTile({
    super.key,
    required this.title,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imagePath),
      title: CustomTextWidget(
        text: title,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        textColor: Colors.black87,
      ),
      onTap: onTap,
    );
  }
}
