import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';

class CategoryItemRow extends StatelessWidget {
  const CategoryItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return CardPlain(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    categoryItemAssetPNG,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Gap(8),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'software house',
                    style: medium20.copyWith(color: mainColor),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet cotetur. Nulla feliNulla felis. Lorem ipsum t amet cot',
                    style: normal13.copyWith(color: mainColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
