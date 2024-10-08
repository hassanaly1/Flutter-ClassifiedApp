import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:classified_app/views/dashboard/active_listing/active_listing_detail.dart';
import 'package:classified_app/views/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
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
          body: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                // SliverToBoxAdapter(child: Header()),
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/store_banner.png'),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage: AssetImage(
                                          'assets/images/store_profile.png'),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomTextWidget(
                                          text: 'Store Name',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        CustomTextWidget(
                                          text: '96% Positive Ratings',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomTextWidget(
                                          text: '465',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        CustomTextWidget(
                                          text: 'Followers',
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    SizedBox()
                                    // IconButton(
                                    //     onPressed: () {},
                                    //     icon:
                                    //         const Icon(Icons.edit_note_rounded))
                                  ],
                                ),
                              )
                            ],
                          )),
                      const SizedBox(height: 6.0),
                      ButtonsTabBar(
                        backgroundColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        labelStyle: TextStyle(
                          color: AppColors.buttonPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelStyle: TextStyle(
                          color: AppColors.lightGreyColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                        borderWidth: 1,
                        duration: 1,
                        buttonMargin:
                            const EdgeInsets.symmetric(horizontal: 12.0),
                        borderColor: AppColors.buttonPrimaryColor,
                        unselectedBorderColor: Colors.transparent,
                        radius: 100,
                        labelSpacing: 8.0,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12.0),
                        tabs: const [
                          Tab(text: 'All Categories'),
                          Tab(text: 'Dogs'),
                          Tab(text: 'Services'),
                          Tab(text: 'Boutiques'),
                        ],
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                CustomTabbarView(),
                CustomTabbarView(),
                CustomTabbarView(),
                CustomTabbarView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTabbarView extends StatelessWidget {
  const CustomTabbarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightGreyColor),
                borderRadius: BorderRadius.circular(12.0),
              ),
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.lightGreyColor),
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.buttonPrimaryColor),
                borderRadius: BorderRadius.circular(12.0),
              ),
              suffixIcon: const Icon(CupertinoIcons.decrease_indent),
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: AppColors.lightTextColor,
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          const CustomTextWidget(
            text: 'Top Best Selling ',
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 12.0),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 12.0,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Get.to(() => const ActiveListingDetailScreen(),
                      transition: Transition.rightToLeft),
                  child: ReUsableContainer(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/1.png',
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomTextWidget(text: 'Dogs for sale'),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: AppColors.blueTextColor,
                                ))
                          ],
                        ),
                        const CustomTextWidget(
                          text: '\$57.70',
                          fontWeight: FontWeight.w600,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              itemSize: 15.0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: AppColors.buttonPrimaryColor,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            const SizedBox(width: 4.0),
                            CustomTextWidget(
                              text: '7.5 ',
                              fontWeight: FontWeight.w600,
                              fontSize: 10.0,
                              textColor: AppColors.buttonPrimaryColor,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                height: 30,
                                color: AppColors.blueTextColor,
                                child: const Center(
                                  child: CustomTextWidget(
                                    text: 'BUY',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10.0,
                                    textColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.shopping_bag_outlined,
                                  color: AppColors.blueTextColor,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
