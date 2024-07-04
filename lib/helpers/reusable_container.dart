import 'package:classified_app/helpers/appcolors.dart';
import 'package:flutter/material.dart';

class ReUsableContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? verticalPadding;
  final double? borderRadius;
  final bool showBackgroundShadow;
  final Color? color;
  final double? height;
  final double? width;
  final DecorationImage? image;

  const ReUsableContainer({
    super.key,
    required this.child,
    this.padding,
    this.verticalPadding,
    this.height,
    this.width,
    this.borderRadius,
    this.showBackgroundShadow = true,
    this.color,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return _buildContainer();
  }

  Widget _buildContainer() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: height,
        width: width,
        padding: padding ??
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
          image: image,
          border: Border.all(
              color: showBackgroundShadow
                  ? Colors.transparent
                  : AppColors.lightGreyColor),
          boxShadow: showBackgroundShadow
              ? [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    blurRadius: 5.0,
                    spreadRadius: 5.0,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ]
              : null,
        ),
        child: child,
      ),
    );
  }
}
