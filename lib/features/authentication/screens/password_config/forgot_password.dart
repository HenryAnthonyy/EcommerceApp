import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/styles/spacing_styles.dart';
import 'package:flutter_app_template/features/authentication/screens/password_config/reset_password.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: TSpacingStlyes.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.forgotPassTitle,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: TSizes.spaceBtnItems,
            ),
            Text(
              TTexts.forgotPassSubtitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: TSizes.spaceBtnSections * 1.5),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(
                    Iconsax.direct_right,
                  )),
            ),
            const SizedBox(
              height: TSizes.spaceBtnItems,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const ResetPasswordScreen()),
                    child: const Text(TTexts.submit)))
          ],
        ),
      ),
    );
  }
}
