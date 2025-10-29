import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';

class TSpacingStlyes {
  TSpacingStlyes._();

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultspace,
    bottom: TSizes.defaultspace,
    right: TSizes.defaultspace,
  );
}
