import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/widgets/back_button.dart';
import 'package:itsp/core/shared/widgets/gradient_outlined_button.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/features/recruitment/screens/application_screen.dart';
import 'package:itsp/features/recruitment/widgets/job_requirment_item.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                          ? 36
                          : 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomBackButton(),
                          Gap(8),
                          SectionTitle(title: 'Ui UX Designer'),
                        ],
                      ),
                    ],
                  ),
                  Gap(24),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Nulla felis consectetur aliquet neque condimentum non. Sed sagittis libero condimentum bibendum venenatis. Nulla feugiat ut proin facilisis in at et sit. In est semper aliquet porta ultricies. Elementum blandit sed risus amet non.',
                    style: normal14.copyWith(color: mainColor),
                    overflow: TextOverflow.visible,
                  ),
                  Gap(16),
                  Wrap(
                    spacing: 16,
                    runSpacing: 8,
                    children: [
                      JobRequirmentItem(
                        icon: Icons.shopping_bag_outlined,
                        text: 'Junior',
                      ),
                      JobRequirmentItem(
                        icon: Icons.schedule_outlined,
                        text: 'Full-Time',
                      ),
                      JobRequirmentItem(
                        icon: Icons.apartment_outlined,
                        text: 'On Site',
                      ),
                      JobRequirmentItem(
                        icon: Icons.school_outlined,
                        text: 'computer science',
                      ),
                    ],
                  ),
                  Gap(16),
                  GradientShaderMask(
                    child: Text(
                      'Salary range: 20000-1500000 EG',
                      style: semiBold20,
                    ),
                  ),
                  Gap(16),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: lightGrayColor,
                      child: SvgPicture.asset(
                        categoriesBackgroundAssetSVG,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                                ? 36
                                : 16,
                        vertical: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GradientShaderMask(
                          child: Text(
                            'Skills',
                            style: semiBold24,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                '• Communication skills (verbal and written)',
                                style: normal15.copyWith(color: mainColor),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        Gap(16),
                        GradientShaderMask(
                          child: Text(
                            'Requirements',
                            style: semiBold24,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                'Proven experience as a Senior UI/UX Designer or similar role.Proficiency in Figma and other relevant design tools. Strong portfolio showcasing a range of design projects.',
                                style: normal15.copyWith(color: mainColor),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                        Gap(32),
                        Row(
                          children: [
                            Expanded(
                              child: GradientButton(
                                onPressed: () => pushNewScreen(
                                  context,
                                  screen: ApplicationScreen(),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  'Apply',
                                  style: semiBold14,
                                ),
                              ),
                            ),
                            Gap(16),
                            Expanded(
                              child: GradientOutlinedButton(
                                onPressed: () {},
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  'Share',
                                  style: semiBold14,
                                ),
                              ),
                            ),
                            if (ResponsiveBreakpoints.of(context)
                                .largerThan(MOBILE))
                              Spacer(flex: 2),
                          ],
                        ),
                        Gap(16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
