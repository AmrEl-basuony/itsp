import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';

class GradientCategoryCardPlain extends StatelessWidget {
  const GradientCategoryCardPlain(
      {this.margin,
      required this.icon,
      required this.text,
      this.onTap,
      super.key});
  final EdgeInsetsGeometry? margin;
  final IconData icon;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CardPlain(
        margin: margin,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: GradientShaderMask(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        text,
                        style: medium13,
                        maxLines: 2,
                        softWrap: true,
                      ),
                    ),
                    Icon(
                      icon,
                      color: Colors.white,
                      size: 32,
                    ),
                  ],
                ),
                Gap(16),
                Row(
                  children: [
                    Icon(
                      Icons.double_arrow,
                      color: Colors.white,
                      size: 18,
                    ),
                    Text(
                      'Click to learn more',
                      style: medium11,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}