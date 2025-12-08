import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/personalization/screens/settings/settings.dart';
import 'package:flutter_app_template/features/shop/screens/favorites/favorites.dart';
import 'package:flutter_app_template/features/shop/screens/home/home.dart';
import 'package:flutter_app_template/features/shop/screens/store/store.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(
        () => Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              // child: Container(
              // color: Colors.white.withOpacity(0.2),
              child: NavigationBar(
                height: 80,
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) =>
                    controller.selectedIndex.value = index,
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Iconsax.home_copy), label: 'Home'),
                  NavigationDestination(
                      icon: Icon(Iconsax.shop_copy), label: 'Shop'),
                  NavigationDestination(
                      icon: Icon(Iconsax.heart_copy), label: 'Favorites'),
                  NavigationDestination(
                      icon: Icon(Iconsax.setting_2_copy), label: 'Settings'),
                ],
              ),
              // ),
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationMenuController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavoritesScreen(),
    const SettingsScreen(),
  ];
}
