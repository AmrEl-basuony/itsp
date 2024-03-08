import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';

class JobDetailsCard extends StatelessWidget {
  const JobDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 33 / 14,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0)
                .copyWith(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        portfolioAssetPNG,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Gap(8),
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'software house',
                        style: medium16.copyWith(
                            color: mainColor),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur. Nulla felis consec non. Sed sagittis libero Lorem ipsum dolor sit amet consectetur. Nulla felis consec non. Sed sagittis libero',
                        style: normal12.copyWith(
                            color: mainColor),
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                gradient: lightLinearGradient,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(8))),
            child: Center(
              child: Text(
                'View all available jobs',
                style: normal14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
