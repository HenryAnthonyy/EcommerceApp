import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/authentication/screens/verify_success/verify_email.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.personalcard),
                      labelText: TTexts.firstName),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtnInputFields,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.personalcard),
                      labelText: TTexts.lastName),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtnInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user),
              labelText: TTexts.userName,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtnInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.profile_circle),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtnInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.tPhoneNumber,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtnInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check_copy),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash_copy)),
          ),
          const SizedBox(
            height: TSizes.spaceBtnInputFields,
          ),

          // agree to terms
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: ' ${TTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '${TTexts.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: TColors.primary,
                          ),
                    ),
                    TextSpan(
                        text: ' and ',
                        style: Theme.of(context).textTheme.bodyMedium),
                    TextSpan(
                      text: '${TTexts.termsOfUse} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: TColors.primary,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtnItems * 3,
          ),

          // create account
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const VerifyEmail());
              },
              child: const Text(TTexts.tCreateaccount),
            ),
          ),
        ],
      ),
    );
  }
}
