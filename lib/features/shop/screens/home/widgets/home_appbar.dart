import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/widgets/AppBar/app_bar.dart';
import 'package:flutter_app_template/common/widgets/products/cart/cart_icon.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.appBarTitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.appBarSubtitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        )
      ],
    );
  }
}
