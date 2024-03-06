import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_card.dart';

class GradientCategoryCard extends StatelessWidget {
  const GradientCategoryCard(
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
      child: GradientCard(
        margin: margin,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      text,
                      style: medium11,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                  Gap(24),
                  FaIcon(
                    icon,
                    color: Colors.white,
                  ),
                ],
              ),
              Gap(16),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.anglesRight,
                    color: Colors.white,
                    size: 11,
                  ),
                  Flexible(
                    child: Text(
                      ' Click to learn more',
                      style: medium11,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
