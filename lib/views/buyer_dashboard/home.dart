import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:classified_app/views/buyer_dashboard/profile/profile.dart';
import 'package:classified_app/views/dashboard/active_listing/active_listing_detail.dart';
import 'package:classified_app/views/dashboard/dashboard.dart';
import 'package:classified_app/views/store/store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List images = [
    'assets/images/c1.png',
    'assets/images/c2.png',
    'assets/images/c3.png',
  ];

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
              InkWell(
                onTap: () {
                  Get.to(() => BuyerProfileScreen(),
                      transition: Transition.rightToLeft);
                },
                child: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/store_profile.png'),
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
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Hello Otis',
                          style: GoogleFonts.pacifico(
                            fontSize: 26.0,
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 200.0,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 2),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                          ),
                          items: images.map((imageUrl) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                      image: AssetImage(imageUrl),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.lightGreyColor),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            hintText: 'Search',
                            prefixIcon: const Icon(Icons.search),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.lightGreyColor),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.buttonPrimaryColor),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            suffixIcon:
                                const Icon(CupertinoIcons.decrease_indent),
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              color: AppColors.lightTextColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12.0),
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
                        const SizedBox(height: 12.0),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
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
  CustomTabbarView({
    super.key,
  });

  final List images = [
    'assets/images/c1.png',
    'assets/images/c2.png',
    'assets/images/c3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const CustomTextWidget(
            text: 'Dog Categories',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  CustomDogCategoryWidget(
                    title: 'Sporting Dogs',
                    imageUrl: 'assets/images/d1.png',
                    color: Color(0XFFffab73),
                  ),
                  CustomDogCategoryWidget(
                    title: 'Hound Dogs',
                    imageUrl: 'assets/images/d2.png',
                    color: Color(0XFF8595a8),
                  ),
                  CustomDogCategoryWidget(
                    title: 'Working Dogs',
                    imageUrl: 'assets/images/d3.png',
                    color: Color(0XFFcabcdf),
                  ),
                  CustomDogCategoryWidget(
                    title: 'Terrier Dogs',
                    imageUrl: 'assets/images/d4.png',
                    color: Color(0XFFa2c9df),
                  ),
                  CustomDogCategoryWidget(
                    title: 'Toy Dogs',
                    imageUrl: 'assets/images/d1.png',
                    color: Color(0XFFffab73),
                  ),
                  CustomDogCategoryWidget(
                    title: 'Breed Dogs',
                    imageUrl: 'assets/images/d2.png',
                    color: Color(0XFF8595a8),
                  ),
                  CustomDogCategoryWidget(
                    title: 'Herding Dogs',
                    imageUrl: 'assets/images/d3.png',
                    color: Color(0XFFcabcdf),
                  ),
                  CustomDogCategoryWidget(
                    title: 'Terrier Dogs',
                    imageUrl: 'assets/images/d4.png',
                    color: Color(0XFFa2c9df),
                  ),
                ],
              ),
            ),
          ),
          CustomTextWidget(
            text:
                'Explore dogs by various categories to find your perfect match.',
            fontSize: 12.0,
            maxLines: 2,
            textColor: AppColors.lightTextColor,
          ),
          const SizedBox(height: 12.0),
          const Divider(thickness: 2.0),
          const CustomTextWidget(
            text: 'Verified Dog Stores',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 12.0),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                VerifiedStore(),
                VerifiedStore(),
                VerifiedStore(),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          const CustomTextWidget(
            text: 'Nearest Dogs',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const CustomGridCard();
            },
          ),
          const Divider(thickness: 2.0),
          const CustomTextWidget(
            text: 'Ads',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
            ),
            items: images.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const Divider(thickness: 2.0),
          const CustomTextWidget(
            text: 'Services',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomGridCard(),
                CustomGridCard(),
                CustomGridCard(),
              ],
            ),
          ),
          const Divider(thickness: 2.0),
          const CustomTextWidget(
            text: 'Featured Listing',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomGridCard(),
                CustomGridCard(),
                CustomGridCard(),
              ],
            ),
          ),
          const Divider(thickness: 2.0),
          const CustomTextWidget(
            text: 'New Feeds',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomGridCard(),
                CustomGridCard(),
                CustomGridCard(),
              ],
            ),
          ),
          const Divider(thickness: 2.0),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
            ),
            items: images.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class CustomDogCategoryWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Color color;

  const CustomDogCategoryWidget({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Colors.transparent,
      child: Center(
        child: SizedBox(
          width: 100,
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  // This allows the image to overflow outside the red container
                  children: [
                    Positioned(
                      top: -35,
                      // Adjust this value to control how much the image overflows
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        imageUrl,
                        height: 120,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6.0),
              CustomTextWidget(
                text: title,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomGridCard extends StatelessWidget {
  const CustomGridCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const ActiveListingDetailScreen(),
            transition: Transition.rightToLeft);
      },
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
                Container(
                  height: 30,
                  color: AppColors.blueTextColor,
                  child: const Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
  }
}

class VerifiedStore extends StatelessWidget {
  const VerifiedStore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, top: 8.0, bottom: 8.0),
      child: InkWell(
        onTap: () {
          Get.to(() => const StoreScreen(), transition: Transition.rightToLeft);
        },
        child: Container(
            width: context.width * 0.7,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/store_profile.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            text: 'Store Name',
                            fontSize: 14.0,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
