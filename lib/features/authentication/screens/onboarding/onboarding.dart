import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_app_template/features/authentication/screens/onboarding/onboarding_dot_navigator.dart';
import 'package:flutter_app_template/features/authentication/screens/onboarding/onboarding_next_button.dart';
import 'package:flutter_app_template/features/authentication/screens/onboarding/onboarding_page.dart';
import 'package:flutter_app_template/features/authentication/screens/onboarding/onboarding_skip_button.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';
import 'package:flutter_app_template/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
                image: TImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
                image: TImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
                image: TImages.onBoardingImage3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkipButton(),

          /// Dot navigation smooth page indicator
          const OnBoardingDotNavigator(),

          /// circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


