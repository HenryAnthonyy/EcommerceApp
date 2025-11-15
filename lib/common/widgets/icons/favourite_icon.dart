import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/widgets/icons/circular_icon.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TFavouriteIcon extends StatelessWidget {
  const TFavouriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return TCircularIcon(
      icon: Iconsax.heart,
      color: TColors.error,
      onPressed: () {},
    );
  }
}
