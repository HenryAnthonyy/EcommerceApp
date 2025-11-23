import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/widgets/text/brand_title_text.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/enums.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TBrandTitleWithVerificationBadge extends StatelessWidget {
  const TBrandTitleWithVerificationBadge({
    super.key,
    required this.title,
    this.textColor,
    this.iconColor = TColors.primary,
    this.maxLines = 1,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final Color? textColor, iconColor;
  final int maxLines;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        Icon(
          Iconsax.verify,
          color: iconColor,
          size: TSizes.iconsSm,
        )
      ],
    );
  }
}
