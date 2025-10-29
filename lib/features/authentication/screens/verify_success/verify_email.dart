import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/styles/spacing_styles.dart';
import 'package:flutter_app_template/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_app_template/features/authentication/screens/verify_success/success_screen.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStlyes.paddingWithAppBarHeight,
          child: Column(
            children: [
              // image

              const Image(
                image: AssetImage(TImages.verifyEmail),
              ),

              const SizedBox(
                height: TSizes.spaceBtnSections,
              ),
              // verify
              Text(TTexts.verifyEmailHeadline,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: TSizes.spaceBtnItems),

              Text('example@email.com',
                  style: Theme.of(context).textTheme.bodyLarge),

              const SizedBox(height: TSizes.spaceBtnItems),

              Text(
                TTexts.verifyEmailSubtitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: TSizes.spaceBtnSections,
              ),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(SuccessScreen(
                            image: TImages.successEmailMessage,
                            subtitle: TTexts.successAccSubtitle,
                            title: TTexts.successAccHeadline,
                            onPressed: () =>
                                Get.offAll(() => const LoginScreen()),
                          )),
                      child: const Text('Continue'))),

              const SizedBox(height: TSizes.spaceBtnItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TTexts.resendEmailBtn)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
