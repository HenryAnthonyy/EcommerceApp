

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TDeviceUtils {
  TDeviceUtils._();

  /// Hides the keyboard if it is currently open.
  static void hideKeyBoard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }


  /// Sets the status bar color to the given [color].
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }


  /// Checks if the device is in landscape orientation.
  static bool isLandScapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }


  /// Checks if the device is in portrait orientation.
  static bool isPotraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }
  

  /// Enables or disables full screen mode based on [enable].
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }



  /// Returns the height of the device screen.
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }


  /// Returns the width of the device screen.
  static double getScreenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }



  /// Returns the device pixel ratio.
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }


  /// Returns the height of the status bar.
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }


  /// Returns the default bottom navigation bar height.
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }


  /// Returns the default app bar height.
  static double getAppBarHeight() {
    return kToolbarHeight;
  }


  /// Returns the height of the keyboard if visible.
  static double getKeyBoardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }


  /// Checks if the keyboard is currently visible.
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }


  /// Checks if the app is running on a physical Android or iOS device.
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }


  /// Vibrates the device for the given [duration].
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }


  /// Sets the preferred orientations for the app.
  static Future<void> setPrefferedOrientations(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }


  /// Hides the status bar completely.
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }


  /// Checks if the device has an active internet connection.
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup("example.com");
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }


  /// Returns true if the device is running on iOS.
  static bool isIOS() {
    return Platform.isIOS;
  }


  /// Returns true if the device is running on Android.
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  /// Launches the given [url] in the default browser.
  static void launchUrl(String url) async {
    if(await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}