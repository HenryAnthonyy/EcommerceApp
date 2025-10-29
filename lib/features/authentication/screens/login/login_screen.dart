import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/form/form_divider.dart';
import 'package:flutter_app_template/common/form/social_footer.dart';
import 'package:flutter_app_template/common/styles/spacing_styles.dart';
import 'package:flutter_app_template/features/authentication/screens/login/login_form.dart';
import 'package:flutter_app_template/features/authentication/screens/login/login_header.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStlyes.paddingWithAppBarHeight,

          // main column
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header column
              LoginHeader(),

              SizedBox(
                height: TSizes.spaceBtnItems,
              ),
              // login form
              LoginForm(),

              /// DIVIDER
              TFormDivider(
                text: TTexts.tOrSignInWith,
              ),
              SizedBox(
                height: TSizes.spaceBtnItems,
              ),

              /// or sign in with
              SocialFooter()
            ],
          ),
        ),
      ),
    );
  }
}
