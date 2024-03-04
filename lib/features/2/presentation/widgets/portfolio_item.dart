import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';

class PortfolioItem extends StatelessWidget {
  const PortfolioItem({this.onTap, super.key});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return CardPlain(
      onTap: onTap,
      margin: EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    portfolioAssetPNG,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            Gap(8),
            Text(
              'Visit Egypt',
              style: normal10.copyWith(color: darkModeColor),
            )
          ],
        ),
      ),
    );
  }
}
