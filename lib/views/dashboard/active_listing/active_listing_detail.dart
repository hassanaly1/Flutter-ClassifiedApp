import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:classified_app/views/dashboard/create_ad.dart';
import 'package:classified_app/views/messages/message_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ActiveListingDetailScreen extends StatelessWidget {
  const ActiveListingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.textColor,
          forceMaterialTransparency: true,
          titleSpacing: 0.0,
          leading: Image.asset('assets/images/chat.png'),
          title: const CustomTextWidget(
            text: 'My Chats',
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                // SliverToBoxAdapter(child: Header()),
                SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(12.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    'https://wallpapers.com/images/high/two-puppy-dogs-in-wood-basket-dkvqptz6qqfdgbie.webp'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(12.0),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://wallpapers.com/images/high/australian-shepherd-puppy-dog-on-ground-bfrr6c1i9vi5tqd2.webp'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(12.0),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://wallpapers.com/images/high/two-english-bulldog-puppies-t370c854pd2ll2zb.webp'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(12.0),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://wallpapers.com/images/high/english-bulldog-black-and-white-mpjz70in9o324xjm.webp'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CustomTextWidget(
                            text: '4.5',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            textColor: Colors.black,
                          ),
                          RatingBar.builder(
                            initialRating: 4.5,
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
                          const Icon(Icons.message_outlined),
                          const CustomTextWidget(
                            text: '32 reviews',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            textColor: Colors.black,
                          ),
                          InkWell(
                              onTap: () => Get.to(() => MessageDetailScreen(),
                                  transition: Transition.rightToLeft),
                              child:
                                  const CustomSecondaryButton(text: 'Message'))
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextWidget(
                              text: 'Charlie Cooper',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              textColor: Colors.black,
                            ),
                            Icon(
                              Icons.favorite_border,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextWidget(
                              text: '\$129.95',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              textColor: Colors.black,
                            ),
                            Icon(
                              Icons.shopping_bag_outlined,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 8.0, right: 8.0),
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
                                text: 'Buy Now',
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
                ),
                const Divider(thickness: 2.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListView(
                      children: [
                        const CustomTextWidget(
                          text: 'Description:',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.black,
                        ),
                        const CustomTextWidget(
                          text:
                              'Born helpless, but grow fast - doubling their weight in a week!'
                              'Amazing smell - 10,000x stronger than humans!'
                              ' Playful learners - develop social skills through play.'
                              'Over 200 breeds - find your perfect pup match!'
                              'Big responsibility - love, care, and commitment needed!',
                          fontSize: 12.0,
                          maxLines: 8,
                          fontWeight: FontWeight.w300,
                          textColor: Colors.black,
                        ),
                        const Divider(thickness: 2.0),
                        const CustomTextWidget(
                          text: 'Location:',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.black,
                        ),
                        Container(
                          height: 120,
                          color: Colors.blueAccent,
                        ),
                        const Divider(thickness: 2.0),
                        const CustomTextWidget(
                          text: 'Puppy\'s Shop  Profile:',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.black,
                        ),
                        SizedBox(height: 8.0),
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
                                    ],
                                  ),
                                )
                              ],
                            )),
                        const Divider(thickness: 2.0),
                        const CustomTextWidget(
                          text: '5 Reviews:',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          textColor: Colors.black,
                        ),
                        SizedBox(height: 8.0),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const ReviewCard();
                          },
                        ),
                        const Divider(thickness: 2.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ReUsableContainer(
      showBackgroundShadow: false,
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            titleAlignment: ListTileTitleAlignment.top,
            title: const CustomTextWidget(
              text: 'James Smith',
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              textColor: Colors.black,
            ),
            subtitle: RatingBar.builder(
              initialRating: 4.5,
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
            trailing: const CustomTextWidget(
              text: 'August 12, 2022',
              fontSize: 10.0,
              textColor: Colors.black,
            ),
          ),
          const CustomTextWidget(
            text:
                'I recently purchased a puppy from XYZ cOMPANY, and I couldn/\t be happier with the entire experience. From the initial inquiry to bringing my new furry friend home, everything was handled professionally and with great care.',
            fontSize: 10,
            maxLines: 10,
            fontWeight: FontWeight.w500,
            textColor: Colors.black,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://wallpapers.com/images/high/australian-shepherd-puppy-dog-on-ground-bfrr6c1i9vi5tqd2.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://wallpapers.com/images/high/two-english-bulldog-puppies-t370c854pd2ll2zb.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://wallpapers.com/images/high/english-bulldog-black-and-white-mpjz70in9o324xjm.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
