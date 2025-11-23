import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = TSizes.cardRadiusLg,
    this.padding = const EdgeInsets.all(TSizes.sm),
    this.margin,
    this.showBorder = false,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.borderPrimary,
    required this.child,
  });

  final double? width, height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsets? margin;
  final bool showBorder;
  final Color backgroundColor, borderColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          border: showBorder ? Border.all(color: borderColor) : null,
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor),
      child: child,
    );
  }
}
