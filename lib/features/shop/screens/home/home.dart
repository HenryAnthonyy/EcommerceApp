import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_app_template/common/widgets/images/promo_slider.dart';
import 'package:flutter_app_template/common/widgets/searchbar/search_bar.dart';
import 'package:flutter_app_template/common/widgets/sections/section_heading.dart';
import 'package:flutter_app_template/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_app_template/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// APP BAR
                  THomeAppBar(),

                  SizedBox(
                    height: TSizes.spaceBtnSections,
                  ),

                  /// SEARCH BAR
                  TSearchBarContainer(
                    text: 'Search in Store',
                  ),

                  SizedBox(
                    height: TSizes.spaceBtnSections,
                  ),

                  /// CATEGORES
                  Padding(
                    padding: EdgeInsets.only(
                      left: TSizes.defaultspace,
                    ),
                    child: Column(
                      children: [
                        TSectionHeading(
                          headingText: 'Popular Categories',
                          showActionButton: false,
                        ),

                        SizedBox(
                          height: TSizes.spaceBtnItems,
                        ),

                        // category images
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// BODY AND CONTENT
            Padding(
              padding: EdgeInsets.all(TSizes.defaultspace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                  TImages.promoBanner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
