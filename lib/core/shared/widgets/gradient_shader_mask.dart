import 'package:flutter/material.dart';
import 'package:itsp/core/theming/colors.dart';

class GradientShaderMask extends StatelessWidget {
  const GradientShaderMask({
    this.linearGradient = lightLinearGradient,
    this.child,
    super.key,
  });
  final Widget? child;
  final LinearGradient linearGradient;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) => linearGradient.createShader(bounds),
      child: child,
    );
  }
}
