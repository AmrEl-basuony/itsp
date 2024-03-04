import 'package:flutter/material.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';

class GradientOutlinedButton extends StatelessWidget {
  const GradientOutlinedButton({
    required this.onPressed,
    this.padding = const EdgeInsets.all(0),
    this.margin,
    this.height = 30,
    this.width,
    required this.child,
    this.visualDensity,
    super.key,
  });
  final Widget? child;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding, margin;
  final double? height, width;
  final VisualDensity? visualDensity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          visualDensity: visualDensity,
          minimumSize: Size(width ?? 0, height ?? 0),
          padding: padding,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        onPressed: onPressed,
        child: GradientShaderMask(
          child: child,
        ),
      ),
    );
  }
}
