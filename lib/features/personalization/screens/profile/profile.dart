import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/widgets/AppBar/app_bar.dart';
import 'package:flutter_app_template/common/widgets/images/circular_image.dart';
import 'package:flutter_app_template/common/widgets/sections/section_heading.dart';
import 'package:flutter_app_template/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultspace),
          child: Column(
            children: [
              /// -- USER IMAGE --
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      width: 80,
                      height: 80,
                      image: TImages.userProfile1,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              // -- DIVIDER --
              const Divider(),

              /// -- DETAILS --
              const SizedBox(height: TSizes.spaceBtnItems),

              const TSectionHeading(
                headingText: 'Profile Information',
                showActionButton: false,
              ),

              const SizedBox(height: TSizes.spaceBtnItems),

              TProfileMenu(
                title: 'Name',
                value: 'Henry Anthony',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Username',
                value: 'henry_kayy',
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtnSections),

              const TSectionHeading(
                headingText: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtnItems),

              TProfileMenu(
                title: 'User-ID',
                value: '123-456',
                onPressed: () {},
                icon: Iconsax.copy_copy,
              ),
              TProfileMenu(
                title: 'Email Address',
                value: 'example@email.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+256 78881212',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Date Of Birth',
                value: '01-01-2000',
                onPressed: () {},
              ),

              const SizedBox(height: TSizes.spaceBtnSections),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: TColors.error, fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
