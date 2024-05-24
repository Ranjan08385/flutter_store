import 'package:flutter/material.dart';
import 'package:flutter_store/utils/constants/colors.dart';
import 'package:flutter_store/utils/constants/sizes.dart';
import 'package:flutter_store/utils/helpers/helper_functions.dart';

class CircularIcons extends StatelessWidget {
  const CircularIcons({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.color,
    this.backgroundColor,
    required this.icon,
    this.onPressed,
  });

  final double? width, height, size;
  final Color? color;
  final Color? backgroundColor;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ??
            (dark
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9)),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
