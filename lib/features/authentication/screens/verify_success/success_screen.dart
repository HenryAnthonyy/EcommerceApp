import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/styles/spacing_styles.dart';
import 'package:flutter_app_template/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
    this.onPressed,
  });

  final String title, subtitle, image;
  final VoidCallback? onPressed;

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

              Image(image: AssetImage(image)),
              const SizedBox(height: TSizes.spaceBtnSections),

              const SizedBox(height: TSizes.spaceBtnSections * 2.5),

              // verify
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: TSizes.spaceBtnItems),

              Text(subtitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center),

              const SizedBox(
                height: TSizes.spaceBtnSections,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Done'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
