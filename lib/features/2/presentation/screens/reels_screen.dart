import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/features/2/presentation/widgets/reel_item_row.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
                  horizontal:
                      ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                          ? 32
                          : 16)
              .copyWith(top: 8),
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
                ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                    ? AlignedGridView.count(
                        itemCount: 7,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        clipBehavior: Clip.none,
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        itemBuilder: (BuildContext context, int index) =>
                            ReelItemRow(),
                      )
                    : ListView.builder(
                        itemCount: 5,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => ReelItemRow(),
                      ),
                Gap(navBarHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
