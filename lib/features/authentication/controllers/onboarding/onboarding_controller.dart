import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/authentication/screens/login/login_screen.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// VARIABLES
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// UPDATE CURRENT INDEX WHEN PAGE SCROLL
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// JUMP TO THE SPECIFIC DOT SELECTED PAGE
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// UPDATE CURRENT INDEX & JUMP TO THE NEXT PAGE
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // jump to login screen
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// UPDATE CURRENT INDEX & JUMP TO LAST PAGE
  void skipPage() {
    currentPageIndex.value =
        3; // set manually the last page to 2 because 3 onboarding screens exist
    pageController.jumpToPage(3);
  }
}
