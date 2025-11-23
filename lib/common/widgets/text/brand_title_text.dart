import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.title,
    required this.maxLines,
    this.color,
    this.textAlign,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge
                  : Theme.of(context).textTheme.bodyMedium,
    );
  }
}
