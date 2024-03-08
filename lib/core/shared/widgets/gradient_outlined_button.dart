import 'package:flutter/material.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';

class GradientOutlinedButton extends StatelessWidget {
  const GradientOutlinedButton({
    required this.onPressed,
    this.padding = const EdgeInsets.all(0),
    this.margin,
    this.visualDensity = VisualDensity.compact,
    this.radius = 8,
    required this.child,
    super.key,
  });
  final Widget? child;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding, margin;
  final VisualDensity? visualDensity;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          visualDensity: visualDensity,
          padding: padding,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)),
        ),
        onPressed: onPressed,
        child: GradientShaderMask(
          child: child,
        ),
      ),
    );
  }
}
