import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/helpers/helper_functions.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.headingText,
    this.buttonText = 'View All',
    this.showActionButton = true,
    this.onPressed,
  });

  final String headingText, buttonText;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headingText,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: dark ? TColors.white : TColors.dark),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: TColors.accent),
            ),
          ),
      ],
    );
  }
}
