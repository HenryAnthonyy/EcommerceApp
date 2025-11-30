import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/device/device_utility.dart';
import 'package:flutter_app_template/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key,
    this.indicatorColor = TColors.primary,
    this.unselectedLabelColor = TColors.darkGrey,
    this.labelColor,
    required this.tabs,
    this.backgroundColor,
  });

  final Color? indicatorColor,
      unselectedLabelColor,
      labelColor,
      backgroundColor;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor ??
          (THelperFunctions.isDarkMode(context) ? TColors.dark : TColors.white),
      child: TabBar(
          isScrollable: true,
          indicatorColor: indicatorColor,
          unselectedLabelColor: unselectedLabelColor,
          labelColor: labelColor ??
              (THelperFunctions.isDarkMode(context)
                  ? TColors.light
                  : TColors.primary),
          indicatorWeight: 4,
          tabAlignment: TabAlignment.start,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
