import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/helpers/custom_text.dart';
import 'package:classified_app/helpers/reusable_container.dart';
import 'package:classified_app/views/dashboard/create_ad.dart';
import 'package:classified_app/views/dashboard/dashboard.dart';
import 'package:classified_app/views/dashboard/reusable_widgets/heading_and_textfield.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddServiceScreen extends StatelessWidget {
  final String text;

  const AddServiceScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.textColor,
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
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Add $text',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    textColor: AppColors.buttonPrimaryColor,
                  ),
                  const SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(12),
                      color: AppColors.lightGreyColor,
                      dashPattern: const [8, 4],
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(height: 12.0),
                              Image.asset('assets/images/upload.png'),
                              const SizedBox(height: 12.0),
                              const CustomTextWidget(
                                text: 'Please upload a product image.',
                                fontSize: 10.0,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 6.0),
                              const CustomTextWidget(
                                text: 'Jpeg, png are allowed.',
                                fontSize: 10.0,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  const HeadingAndTextfield(title: 'Service Type'),
                  const HeadingAndTextfield(title: 'Service Name'),
                  const HeadingAndTextfield(title: 'Description', maxLines: 5),
                  const CustomTextWidget(
                    text: 'Availablity',
                    fontWeight: FontWeight.w500,
                    maxLines: 2,
                    fontSize: 12,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: CheckboxListTile(
                          value: false,
                          onChanged: (value) {},
                          title: const CustomTextWidget(
                            text: 'Monday',
                            fontSize: 12,
                            maxLines: 2,
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          dense: true,
                        ),
                      ),
                      Flexible(
                        child: CheckboxListTile(
                          value: false,
                          onChanged: (value) {},
                          title: const CustomTextWidget(
                            text: 'Tuesday',
                            fontSize: 12,
                            maxLines: 2,
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          dense: true,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: CheckboxListTile(
                          value: false,
                          onChanged: (value) {},
                          title: const CustomTextWidget(
                            text: 'Wednesday',
                            fontSize: 12,
                            maxLines: 2,
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          dense: true,
                        ),
                      ),
                      Flexible(
                        child: CheckboxListTile(
                          value: false,
                          onChanged: (value) {},
                          title: const CustomTextWidget(
                            text: 'Thursday',
                            fontSize: 12,
                            maxLines: 2,
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          dense: true,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: CheckboxListTile(
                          value: false,
                          onChanged: (value) {},
                          title: const CustomTextWidget(
                            text: 'Friday',
                            fontSize: 12,
                            maxLines: 2,
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          dense: true,
                        ),
                      ),
                      Flexible(
                        child: CheckboxListTile(
                          value: false,
                          onChanged: (value) {},
                          title: const CustomTextWidget(
                            text: 'Saturday',
                            fontSize: 12,
                            maxLines: 2,
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          dense: true,
                        ),
                      ),
                    ],
                  ),
                  CheckboxListTile(
                    value: false,
                    onChanged: (value) {},
                    title: const CustomTextWidget(
                      text: 'Sunday',
                      fontSize: 12,
                      maxLines: 2,
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    dense: true,
                  ),
                  const Row(
                    children: [
                      Flexible(child: HeadingAndTextfield(title: 'Start Time')),
                      Flexible(child: HeadingAndTextfield(title: 'End Time')),
                    ],
                  ),
                  const Row(
                    children: [
                      Flexible(
                          child: HeadingAndTextfield(title: 'Regular Price')),
                      Flexible(child: HeadingAndTextfield(title: 'Sale Price')),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomTextWidget(
                          text: 'Tag',
                          fontWeight: FontWeight.w500,
                          maxLines: 2,
                          fontSize: 12,
                        ),
                        ReUsableContainer(
                          showBackgroundShadow: false,
                          width: context.width,
                          child: Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Chip(
                                  label: const CustomTextWidget(
                                    text: 'Tag 1',
                                    textColor: Colors.white,
                                    fontSize: 10,
                                  ),
                                  backgroundColor: AppColors.blueTextColor,
                                  visualDensity: VisualDensity.compact,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Chip(
                                  label: const CustomTextWidget(
                                    text: 'Tag 2',
                                    textColor: Colors.white,
                                    fontSize: 10,
                                  ),
                                  backgroundColor: AppColors.blueTextColor,
                                  visualDensity: VisualDensity.compact,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Chip(
                                  label: const CustomTextWidget(
                                    text: 'Tag 3',
                                    textColor: Colors.white,
                                    fontSize: 10,
                                  ),
                                  backgroundColor: AppColors.blueTextColor,
                                  visualDensity: VisualDensity.compact,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Chip(
                                  label: const CustomTextWidget(
                                    text: 'Tag 4',
                                    textColor: Colors.white,
                                    fontSize: 10,
                                  ),
                                  backgroundColor: AppColors.blueTextColor,
                                  visualDensity: VisualDensity.compact,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const HeadingAndTextfield(title: 'Other Details'),
                  HeadingAndTextfield(title: 'Set $text Location')
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 120,
                        child: InkWell(
                          onTap: () => Get.back(),
                          child: const CustomSecondaryButton(
                            text: 'Submit',
                          ),
                        )),
                    const SizedBox(width: 12),
                    SizedBox(
                      width: 120,
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: const CustomSecondaryButton(
                          text: 'Cancel',
                          showBackgroundColor: false,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
