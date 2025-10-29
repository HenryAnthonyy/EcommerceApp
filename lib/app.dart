import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_app_template/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,

      /// light theme
      theme: TAppTheme.lighttheme,

      /// darktheme
      darkTheme: TAppTheme.darktheme,

      home: const OnBoardingScreen(),
    );
  }
}
