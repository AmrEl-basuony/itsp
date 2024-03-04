import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/dialogs/video_dialog.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';

class ReelCard extends StatelessWidget {
  const ReelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
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
                InkWell(
                  onTap: () => showVideoDialog(context),
                  child: Stack(
                    alignment: Alignment.center,
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
                      CircleAvatar(
                        backgroundColor: backgroundColor.withOpacity(0.8),
                        child: GradientShaderMask(
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mohamed El-hossiny',
                      style: semiBold14.copyWith(color: mainColor),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
          ),
        ),
      ),
    );
  }
}