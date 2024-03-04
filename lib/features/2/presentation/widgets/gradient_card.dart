import 'package:flutter/material.dart';
import 'package:itsp/core/theming/colors.dart';

class GradientCard extends StatelessWidget {
  const GradientCard({
    this.child,
    this.margin = const EdgeInsets.symmetric(vertical: 16),
    this.onTap,
    this.borderRadius = 16,
    this.elevation = 10,
    super.key,
  });
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  final double borderRadius, elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              gradient: lightLinearGradient,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: child,
        ),
      ),
    );
  }
}
