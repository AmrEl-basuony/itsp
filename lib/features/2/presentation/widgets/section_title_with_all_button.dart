import 'package:flutter/material.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';

class SectionTitleWithAllButton extends StatelessWidget {
  const SectionTitleWithAllButton({
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GradientShaderMask(
            child: Text(
              title,
              style: semiBold20,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GradientShaderMask(
                  child: Text(
                    'all',
                    style: medium14,
                  ),
                ),
                GradientShaderMask(
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
