import 'package:classified_app/views/dashboard/dashboard.dart';
import 'package:classified_app/views/messages/messages.dart';
import 'package:classified_app/views/orders/orders.dart';
import 'package:classified_app/views/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationController = Get.put(NavigationController());
    return Scaffold(
      body: Obx(
        () => navigationController
            .screens[navigationController.selectedIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
            backgroundColor: const Color(0XFF334E6F),
            indicatorColor: Colors.white.withOpacity(0.1),
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold); // Selected label color
                }
                return const TextStyle(
                    color: Colors.white70); // Unselected label color
              },
            ),
          ),
          child: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: navigationController.selectedIndex.value,
            onDestinationSelected: (value) =>
                navigationController.selectedIndex.value = value,
            destinations: const [
              NavigationDestination(
                icon: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
                label: 'Dashboard',
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                label: 'Messages',
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                label: 'Orders',
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: 'Store',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  Rx<int> selectedIndex = 0.obs;

  final screens = const [
    DashboardScreen(),
    MessageScreen(),
    OrdersScreen(),
    StoreScreen()
  ];
}
