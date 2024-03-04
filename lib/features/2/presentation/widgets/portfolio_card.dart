import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width *
              (ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                  ? 0.35
                  : 0.6)),
      child: Card(
        margin: EdgeInsets.all(4),
        elevation: 10,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          portfolioAssetPNG,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(8),
                Text(
                  'Visit Egypt',
                  style: semiBold14.copyWith(color: mainColor),
                ),
                Gap(4),
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Nulla felis consectetur aliquet neque condimentum non',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: normal10.copyWith(color: mainColor),
                ),
                Gap(8),
                Row(
                  children: [
                    Expanded(
                      child: GradientButton(
                        onPressed: () {},
                        child: Text(
                          'More Details',
                          style: normal14,
                        ),
                      ),
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
