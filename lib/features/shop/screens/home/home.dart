import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/layouts/grid_layout.dart';
import 'package:flutter_app_template/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_app_template/common/widgets/images/promo_slider.dart';
import 'package:flutter_app_template/common/widgets/product/card/product_card_vertical.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// APP BAR
                  THomeAppBar(),

                  SizedBox(height: TSizes.spaceBtnSections),

                  /// SEARCH BAR
                  TSearchBarContainer(
                    text: 'Search in Store',
                  ),

                  SizedBox(height: TSizes.spaceBtnSections),

                  /// CATEGORIES
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

                        SizedBox(height: TSizes.spaceBtnItems),

                        // category images
                        THomeCategories()
                      ],
                    ),
                  ),

                  SizedBox(
                    height: TSizes.spaceBtnSections,
                  )
                ],
              ),
            ),

            /// BODY AND CONTENT
            ///
            //  -----------MAIN BODY PADDING --------
            Container(
              padding: const EdgeInsets.all(TSizes.defaultspace / 2),
              child: Column(
                children: [
                  // ---- PROMO SLIDER ---
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                      TImages.promoBanner3,
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtnSections),

                  // ----PRODUCT CARD VERTICAL---
                  const TSectionHeading(
                    headingText: 'Popular Products',
                  ),
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
