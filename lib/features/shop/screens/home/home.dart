import 'package:flutter/material.dart';
import 'package:flutter_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_store/common/widgets/layout/grid_layout.dart';
import 'package:flutter_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_store/common/widgets/texts/section_heading.dart';
import 'package:flutter_store/utils/constants/colors.dart';
import 'package:flutter_store/utils/constants/image_strings.dart';
import 'package:flutter_store/utils/constants/sizes.dart';

import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtnSections),
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtnSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtnItems),
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.bannerImage1,
                      TImages.bannerImage2,
                      TImages.bannerImage3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtnSections),
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
