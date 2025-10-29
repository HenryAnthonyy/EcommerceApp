import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/authentication/screens/password_config/forgot_password.dart';
import 'package:flutter_app_template/features/authentication/screens/sign_up/signup_screen.dart';
import 'package:flutter_app_template/navigation_menu.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtnInputFields,
          ),

          // password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check_copy),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash_copy),
            ),
          ),

          // spacing
          const SizedBox(
            height: TSizes.spaceBtnInputFields / 2,
          ),

          // remember me / fogot pass row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.tRememberMe),
                ],
              ),

              // forget password
              TextButton(
                onPressed: () => Get.to(() => const ForgotPasswordScreen()),
                child: const Text(TTexts.tForgotPassword),
              )
            ],
          ),

          // spacing
          const SizedBox(
            height: TSizes.spaceBtnSections,
          ),

          // sign_in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const NavigationMenu()),
              child: const Text(TTexts.tSignin),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtnItems,
          ),

          // create account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(() => const SignUpScreen());
              },
              child: const Text(TTexts.tCreateaccount),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtnSections,
          ),
        ],
      ),
    );
  }
}
