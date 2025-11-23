import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_app_template/common/widgets/images/circular_image.dart';
import 'package:flutter_app_template/common/widgets/text/brand_title_with_verification.dart';
import 'package:flutter_app_template/utils/constants/enums.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';

class TBrandStockAmountCard extends StatelessWidget {
  const TBrandStockAmountCard({
    super.key,
    this.backgroundColor = Colors.transparent,
  });

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TRoundedContainer(
        // padding: const EdgeInsets.all(TSizes.sm),
        backgroundColor: backgroundColor,
        showBorder: true,
        child: Row(
          children: [
            // icon
            Flexible(
              child: const TCircularImage(
                image: TImages.clothIcon,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtnItems,
            ),
            // text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerificationBadge(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 productsqwe',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
