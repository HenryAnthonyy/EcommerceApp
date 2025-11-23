import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';
import 'package:flutter_app_template/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.height = 56,
    this.width = 56,
    this.backgroundColor,
    this.overlayColor,
    required this.image,
    this.isNetworkImage = false,
    this.boxFit = BoxFit.cover,
    this.padding = TSizes.sm,
  });

  final double height, width, padding;
  final Color? backgroundColor, overlayColor;
  final String image;
  final bool isNetworkImage;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (THelperFunctions.isDarkMode(context)
                ? TColors.dark
                : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
          // fit: boxFit,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlayColor),
    );
  }
}
