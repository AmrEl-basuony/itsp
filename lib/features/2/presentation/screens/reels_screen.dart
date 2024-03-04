import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/features/2/presentation/widgets/reel_item_row.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0).copyWith(top: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: 'Reels'),
                Gap(16),
                GradientShaderMask(
                  child: Text(
                    'Welcome to the Reels page, your ultimate destination for unleashing creativity through captivating short-form videos!',
                    style: normal16,
                  ),
                ),
                Gap(16),
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                ReelItemRow(),
                ReelItemRow(),
                ReelItemRow(),
                ReelItemRow(),
                Gap(navBarHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
