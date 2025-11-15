import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    required this.price,
    this.currencySign = 'UGX',
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String price, currencySign;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      style: isLarge
          ? Theme.of(context).textTheme.titleLarge!.apply(
              color: TColors.darkGrey.withOpacity(0.8),
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.headlineSmall!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
