import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.headingText,
    this.buttonText = 'View All',
    this.showActionButton = true,
    this.onPressed,
    this.textColor,
  });

  final String headingText, buttonText;
  final bool showActionButton;
  final void Function()? onPressed;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headingText,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child:
                Text(buttonText, style: Theme.of(context).textTheme.bodySmall!),
          ),
      ],
    );
  }
}
