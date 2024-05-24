import 'package:flutter/material.dart';
import 'package:flutter_store/utils/constants/colors.dart';
import 'package:flutter_store/utils/constants/sizes.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
    this.showBorder = false,
    this.borderColor = TColors.borderPrimary,
  });

  final double? width, height;
  final double radius;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
