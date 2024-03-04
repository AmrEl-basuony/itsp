import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_card.dart';

class GradientCategoryCardWide extends StatelessWidget {
  const GradientCategoryCardWide(
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
    return GradientCard(
      margin: margin,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: medium13,
                  maxLines: 2,
                  softWrap: true,
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
            Icon(
              icon,
              color: Colors.white,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}
