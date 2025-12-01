import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/layouts/grid_layout.dart';
import 'package:flutter_app_template/common/widgets/AppBar/app_bar.dart';
import 'package:flutter_app_template/common/widgets/product/card/product_card_vertical.dart';
import 'package:flutter_app_template/common/widgets/product/cart/cart_icon.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Favorites',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [TCartCounterIcon(iconColor: TColors.dark, onPressed: () {})],
      ),

      /// -- BODY --
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultspace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return const TProductCardVertical();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
