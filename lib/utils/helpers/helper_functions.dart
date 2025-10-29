import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THelperFunctions {
  /// shows snackbar
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  /// shows alerts
  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              )
            ],
          );
        });
  }

  /// navigate to screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }


  /// truncates texts
  static String truncateText(String text, int maxLength) {
    if(text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}....';
    }
  }

  /// checking if in darkmode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  /// checking if in lightmode
  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }


  /// gets the screensize
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }


  /// gets the screen height
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// gets the screen width
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }
}
