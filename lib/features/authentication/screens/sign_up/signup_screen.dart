import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/form/form_divider.dart';
import 'package:flutter_app_template/common/form/social_footer.dart';
import 'package:flutter_app_template/common/styles/spacing_styles.dart';
import 'package:flutter_app_template/features/authentication/screens/sign_up/signup_form.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStlyes.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // sign up title
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: TSizes.spaceBtnItems,
              ),

              // sign up form
              const SignUpForm(),

              const SizedBox(
                height: TSizes.spaceBtnItems,
              ),
              // or sign up with
              const TFormDivider(
                text: TTexts.tOrSignInWith,
              ),

              const SizedBox(
                height: TSizes.spaceBtnItems,
              ),
              // socials
              const SocialFooter(),
            ],
          ),
        ),
      ),
    );
  }
}


