import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/layouts/grid_layout.dart';
import 'package:flutter_app_template/common/widgets/AppBar/app_bar.dart';
import 'package:flutter_app_template/common/widgets/brand/brand_stock_amount_card.dart';
import 'package:flutter_app_template/common/widgets/product/cart/cart_icon.dart';
import 'package:flutter_app_template/common/widgets/searchbar/search_bar.dart';
import 'package:flutter_app_template/common/widgets/sections/section_heading.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounterIcon(
            onPressed: () {},
            iconColor: TColors.dark,
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: TColors.accent,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsetsGeometry.all(TSizes.defaultspace),
                child: ListView(
                  children: [
                    // SEARCH BOX
                    const SizedBox(height: TSizes.spaceBtnItems),
                    const TSearchBarContainer(
                        text: 'Search in Store',
                        padding: EdgeInsetsGeometry.zero),
                    const SizedBox(height: TSizes.spaceBtnSections),

                    /// FEATURED BRANDS
                    TSectionHeading(
                      headingText: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtnItems,
                    ),

                    TGridLayout(
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) => const TBrandStockAmountCard(),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(
          decoration: const BoxDecoration(color: TColors.warning),
        ),
      ),
    );
  }
}
