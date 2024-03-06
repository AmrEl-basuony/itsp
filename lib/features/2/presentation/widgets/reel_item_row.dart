import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/dialogs/video_dialog.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';

class ReelItemRow extends StatelessWidget {
  const ReelItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return CardPlain(
      borderRadius: 8,
      margin: EdgeInsets.all(0).copyWith(top: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => showVideoDialog(context),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      person2AssetPNG,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Gap(16),
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Mohamed El-hossiny',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: semiBold14.copyWith(color: mainColor),
                          ),
                        ),
                        Gap(8),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                              gradient: lightLinearGradient,
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            "Tech Category",
                            style: medium8,
                          ),
                        )
                      ],
                    ),
                    Gap(8),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur. Nulla felis consectetur aliquet neque condimentum non. Sed sagittis libero ',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: normal10.copyWith(color: mainColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
