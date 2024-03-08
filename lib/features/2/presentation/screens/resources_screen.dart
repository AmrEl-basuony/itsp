import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/widgets/back_button.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(gradient: lightLinearGradient),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: SvgPicture.asset(
                        categoriesBackgroundAssetSVG,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ResponsiveBreakpoints.of(context)
                                  .largerThan(MOBILE)
                              ? 32
                              : 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(24),
                          Row(
                            children: [CustomBackButton(),
                              Gap(8),
                              Text(
                                'Resources',
                                style: semiBold20,
                              ),
                            ],
                          ),
                          Gap(16),
                          Text(
                            'supercharge your business efforts with data-driven insights and real-world success stories.',
                            style: normal14,
                          ),
                          Gap(56),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                                ? 32
                                : 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(16),
                        GradientShaderMask(
                          child: Text(
                            'Our last case study',
                            style: medium20,
                          ),
                        ),
                        Gap(16),
                        SingleChildScrollView(
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: []..addAll(
                                List.generate(
                                  4,
                                  (index) => SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        (ResponsiveBreakpoints.of(context)
                                                .largerThan(MOBILE)
                                            ? 0.3
                                            : 0.6),
                                    child: AspectRatio(
                                      aspectRatio: 5.25 / 8,
                                      child: CardPlain(
                                        margin: EdgeInsets.only(right: 16),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AspectRatio(
                                                aspectRatio: 4 / 3,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  child: Image.asset(
                                                    socialAssetPNG,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Content Creators collaboration ',
                                                maxLines: 2,
                                                style: medium14.copyWith(
                                                    color: darkModeColor),
                                              ),
                                              Gap(8),
                                              Expanded(
                                                child: Text(
                                                  'Lorem ipsum dolor sit amet consectetur. Curabitur neque duis facilisi commodo bibendum mattis amet ipsum. Mus netus.',
                                                  style: normal13.copyWith(
                                                      color: darkModeColor),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 5,
                                                ),
                                              ),
                                              Gap(16),
                                              Text(
                                                '4 Min • August 19, 2022',
                                                style: normal12.copyWith(
                                                    color: darkModeColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                        Gap(32),
                        GradientShaderMask(
                          child: Text(
                            'Our Blogs',
                            style: medium20,
                          ),
                        ),
                        Gap(16),
                        SingleChildScrollView(
                          clipBehavior: Clip.none,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: []..addAll(
                                List.generate(
                                  4,
                                  (index) => SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        (ResponsiveBreakpoints.of(context)
                                                .largerThan(MOBILE)
                                            ? 0.3
                                            : 0.6),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: CardPlain(
                                        elevation: 0,
                                        margin: EdgeInsets.only(right: 16),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(socialAssetPNG),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.all(16),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              gradient: darkGradient,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    'Lorem ipsum dolor sit amet',
                                                    style: medium16,
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    '2024',
                                                    style: normal12,
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    'DIGITAL design, PRODUCT MANAGER',
                                                    style: normal12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                        Gap(16),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(gradient: lightLinearGradient),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: ResponsiveBreakpoints.of(context)
                                      .largerThan(MOBILE)
                                  ? 32
                                  : 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Gap(32),
                              Text(
                                'Our up coming event',
                                style: medium20,
                              ),
                              Gap(16),
                              Text(
                                'Get the latest updates and deeper in our works',
                                style: normal16,
                              ),
                              Gap(16),
                            ],
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.asset(
                            socialAssetPNG,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: ResponsiveBreakpoints.of(context)
                                      .largerThan(MOBILE)
                                  ? 32
                                  : 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Gap(16),
                              Text(
                                'Supercharge your business efforts with data-driven insights and real-world success stories.',
                                style: normal16,
                              ),
                              Gap(16),
                              Text(
                                '4 Min • August 19, 2022',
                                style: normal14,
                              ),
                              Gap(32),
                              Text(
                                'Other events ',
                                style: semiBold20,
                              ),
                              ListView.builder(
                                itemCount: 2,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return AspectRatio(
                                    aspectRatio:
                                        ResponsiveBreakpoints.of(context)
                                                .largerThan(MOBILE)
                                            ? 5 / 1.1
                                            : 7 / 3.7,
                                    child: CardPlain(
                                      elevation: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: Image.asset(
                                                  person2AssetPNG,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Gap(16),
                                            Flexible(
                                              flex: ResponsiveBreakpoints.of(
                                                          context)
                                                      .largerThan(MOBILE)
                                                  ? 3
                                                  : 2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Content Creators collaberation',
                                                    style: normal16.copyWith(
                                                        color: darkModeColor),
                                                  ),
                                                  Gap(8),
                                                  Flexible(
                                                    child: Text(
                                                      'Lorem ipsum dolor sit amet consectetur. Curabitur neque duis facilisi commodo bibendum mattis amet ipsum. Mus netus. Lorem ipsum dolor sit amet consectetur. Curabitur neque duis facilisi commodo bibendum mattis amet ipsum. Mus netus.',
                                                      style: medium12.copyWith(
                                                          color: darkModeColor),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Gap(navBarHeight),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
