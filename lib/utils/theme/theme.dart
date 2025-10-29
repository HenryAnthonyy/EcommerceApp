import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:flutter_app_template/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_app_template/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_app_template/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_app_template/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_app_template/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_app_template/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_app_template/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  /// Private constructor

  /// LIGHT MODE
  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
  );

  /// DARK MODE
  static ThemeData darktheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    // scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
  );
}
