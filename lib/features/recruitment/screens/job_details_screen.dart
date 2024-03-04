import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/routing/routes.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/core/shared/widgets/gradient_outlined_button.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/features/recruitment/widgets/job_requirment_item.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ButtonPlain(
                              onPressed: () => context.pop(),
                              width: 30,
                              color: backButtonColor,
                              child: Icon(
                                Icons.chevron_left,
                                color: mainColor,
                              ),
                            ),
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
              Stack(
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    child: IntrinsicHeight(
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
                              Text(
                                '• ',
                                style: normal15.copyWith(color: mainColor),
                              ),
                              Flexible(
                                child: Text(
                                  'Communication skills (verbal and written)',
                                  style: normal15.copyWith(color: mainColor),
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
                                ),
                              ),
                            ],
                          ),
                          Gap(32),
                          Spacer(),
                          Row(
                            children: [
                              Expanded(
                                child: GradientButton(
                                  onPressed: () =>
                                      context.push(applicationRoute),
                                  height: null,
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
                                  height: null,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Text(
                                    'Share',
                                    style: semiBold14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Gap(16),
                        ],
                      ),
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
