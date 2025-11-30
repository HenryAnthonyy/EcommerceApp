import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/layouts/grid_layout.dart';
import 'package:flutter_app_template/common/widgets/brand/brand_show_case.dart';
import 'package:flutter_app_template/common/widgets/product/card/product_card_vertical.dart';
import 'package:flutter_app_template/common/widgets/sections/section_heading.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultspace),
          child: Column(
            children: [
              /// --- BRAND SHOWCASE ---
              const TBrandShowCase(
                images: [
                  TImages.productImage1,
                  TImages.productImage1,
                  TImages.productImage1,
                ],
              ),

              const SizedBox(
                height: TSizes.spaceBtnItems,
              ),

              TSectionHeading(
                headingText: 'You may also like',
                onPressed: () {},
              ),

              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return const TProductCardVertical();
                  })
            ],
          ),
        ),
      ],
    );
  }
}
