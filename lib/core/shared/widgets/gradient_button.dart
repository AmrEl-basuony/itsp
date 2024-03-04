import 'package:flutter/material.dart';
import 'package:itsp/core/theming/colors.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    required this.onPressed,
    this.padding = const EdgeInsets.all(0),
    this.margin,
    this.height = 30,
    this.width,
    this.gradient = lightLinearGradient,
    this.visualDensity,
    this.radius = 8,
    required this.child,
    super.key,
  });
  final Widget? child;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding, margin;
  final double? height, width;
  final Gradient? gradient;
  final VisualDensity? visualDensity;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          visualDensity: visualDensity,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          minimumSize: Size(width ?? 0, height ?? 0),
          padding: padding,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
