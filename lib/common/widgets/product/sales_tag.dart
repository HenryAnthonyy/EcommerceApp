import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';

class TSalesTag extends StatelessWidget {
  const TSalesTag({
    super.key,
    required this.discount,
    this.backgroundColor = TColors.secondary,
  });

  final String discount;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: TSizes.sm,
        vertical: TSizes.xs,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.sm),
        color: TColors.secondary.withValues(alpha: 0.8),
      ),
      child: Text(
        discount,
        style:
            Theme.of(context).textTheme.labelLarge!.apply(color: TColors.dark),
      ),
    );
  }
}
