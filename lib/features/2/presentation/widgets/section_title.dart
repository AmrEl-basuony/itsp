import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    required this.title,
    this.padding = const EdgeInsets.all(0),
    this.onTap,
    super.key,
  });
  final String title;
  final EdgeInsetsGeometry padding;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Wrap(
        children: [
          GradientShaderMask(
            child: Text(
              title,
              style: semiBold20,
            ),
          ),
        ],
      ),
    );
  }
}
