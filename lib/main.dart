import 'package:classified_app/controllers/universal_controller.dart';
import 'package:classified_app/helpers/appcolors.dart';
import 'package:classified_app/start.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    UniversalController controller = Get.put(UniversalController());
    return GetMaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        // checkboxTheme: CheckboxThemeData(
        //   fillColor: WidgetStateProperty.all(AppColors.primaryColor),
        // ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.all(AppColors.primaryColor),
        ),
      ),
      home: const StartScreen(),

      // home: const BuyerBottomBar(),
    );
  }
}
