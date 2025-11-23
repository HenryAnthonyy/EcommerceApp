import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/styles/shadow_styles.dart';
import 'package:flutter_app_template/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_app_template/common/widgets/icons/favourite_icon.dart';
import 'package:flutter_app_template/common/widgets/images/rounded_image.dart';
import 'package:flutter_app_template/common/widgets/text/brand_title_with_verification.dart';
import 'package:flutter_app_template/common/widgets/product/product_price_text.dart';
import 'package:flutter_app_template/common/widgets/product/sales_tag.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Main container with the padding , colors, edges
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkGrey : TColors.grey,
            boxShadow: [TShadowStyle.verticalProductShadow]),
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.white,
              child: const Stack(
                children: [
                  // -- thumbnail --
                  Center(
                    child: TRoundedImage(
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                    ),
                  ),

                  // -- product-tag / discount
                  Positioned(
                    top: 12,
                    child: TSalesTag(
                      discount: '25%',
                    ),
                  ),

                  // -- favourite icon --
                  Positioned(top: 0, right: 0, child: TFavouriteIcon()),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtnItems / 2),

            // --- product details ---
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Red Jordan 4s',
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: TSizes.spaceBtnItems / 2),

                  // --label--
                  const TBrandTitleWithVerificationBadge(
                    title: 'Nike',
                  ),
                ],
              ),
            ),

            // spacer
            const Spacer(),
            // -- price & add to cart--
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // -- price --

                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(
                    price: '250,000',
                  ),
                ),

                // -- add to cart
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                    color: TColors.black,
                  ),
                  child: const Icon(
                    Iconsax.add_copy,
                    color: TColors.white,
                    size: 40,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
