import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/device/device_utility.dart';
import 'package:flutter_app_template/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TSearchBarContainer extends StatelessWidget {
  const TSearchBarContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal_copy,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultspace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.grey) : null,
            color: showBackground
                ? dark
                    ? TColors.dark
                    : TColors.light
                : Colors.transparent,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: TColors.darkGrey,
              ),
              const SizedBox(
                width: TSizes.spaceBtnItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
