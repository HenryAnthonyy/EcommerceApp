import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_app_template/features/authentication/screens/verify_success/success_screen.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          TSizes.defaultspace,
        ),
        child: SuccessScreen(
          image: TImages.resetPassImage,
          subtitle: TTexts.resetPassSubTitle,
          title: TTexts.resetPassTitle,
          onPressed: () => Get.offAll(() => const LoginScreen()),
        ),
      ),
    );
  }
}
