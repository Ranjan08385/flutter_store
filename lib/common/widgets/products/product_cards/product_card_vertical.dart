import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_store/common/styles/shadows.dart';
import 'package:flutter_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_store/common/widgets/icons/circular_icons.dart';
import 'package:flutter_store/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:flutter_store/common/widgets/texts/product_price_text.dart';
import 'package:flutter_store/common/widgets/texts/product_title_text.dart';
import 'package:flutter_store/utils/constants/colors.dart';
import 'package:flutter_store/utils/constants/image_strings.dart';
import 'package:flutter_store/utils/constants/sizes.dart';
import 'package:flutter_store/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            TCircularContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  TRoundedImage(
                    imageUrl: TImages.product1,
                    applyImageRadius: true,
                    backgroundColor: dark ? TColors.dark : TColors.light,
                  ),
                  Positioned(
                    top: 0,
                    child: TCircularContainer(
                      width: 40,
                      height: 25,
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: CircularIcons(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtnItems / 2),
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Grey Nike Air Shoe",
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtnItems / 2),
                  BrandTitleTextWithVerified(title: "Nike"),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: ProductPriceText(
                    price: "35.5",
                    isLarge: false,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
