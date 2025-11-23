import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.padding,
    this.borderRadius = TSizes.md,
    this.width,
    this.height,
    required this.imageUrl,
    this.isNetworkImage = false,
    this.applyImageRadius = false,
    this.fit = BoxFit.contain,
    this.onPressed,
    this.border,
    this.backgroundColor,
  });

  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final double? width, height;
  final String imageUrl;
  final bool isNetworkImage, applyImageRadius;
  final BoxFit? fit;
  final VoidCallback? onPressed;
  final BoxBorder? border;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl)
                    as ImageProvider, // imageprovider neccessary to avoid image error
            fit: fit,
          ),
        ),
      ),
    );
  }
}
