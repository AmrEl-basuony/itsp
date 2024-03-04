import 'package:flutter/material.dart';

class CardPlain extends StatelessWidget {
  const CardPlain({
    this.child,
    this.margin = const EdgeInsets.symmetric(vertical: 16),
    this.elevation = 10,
    this.onTap,
    this.borderRadius = 16,
    super.key,
  });
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  final double? elevation;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.transparent,
      margin: margin,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: child,
        ),
      ),
    );
  }
}
