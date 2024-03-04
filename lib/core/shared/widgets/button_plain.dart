import 'package:flutter/material.dart';

class ButtonPlain extends StatelessWidget {
  const ButtonPlain({
    required this.onPressed,
    this.padding = const EdgeInsets.all(0),
    this.margin,
    this.height = 30,
    this.width,
    this.color = Colors.white,
    required this.child,
    super.key,
  });
  final Widget? child;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding, margin;
  final double? height, width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          minimumSize: const Size(0, 0),
          padding: padding,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
