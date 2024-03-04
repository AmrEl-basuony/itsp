import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_card.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

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
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(32)),
                  image: DecorationImage(
                      image: AssetImage(peopleAssetPNG), fit: BoxFit.fill),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(24),
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
                        Text(
                          'About us',
                          style: semiBold20,
                        ),
                      ],
                    ),
                    Gap(32),
                    Text(
                      'The Story Behind ITSP!',
                      style: medium20,
                    ),
                    Gap(16),
                    Text(
                      'From that spark, our business took off. We tackled websites, then apps, each project testing the limits of available technology and cultural awareness. We assembled teams of gifted developers, designers, and marketers, with each member contributing a special strength to the whole team.',
                      style: normal14,
                    ),
                    Gap(80),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(16),
                    GradientShaderMask(
                      child: Text(
                        'Get to Know us!',
                        style: medium24,
                      ),
                    ),
                    Gap(16),
                    GradientShaderMask(
                      child: Text(
                        'From that spark, our business took off. We tackled websites, then apps, each project testing the limits of available technology and cultural awareness. We assembled teams of gifted developers, designers, and marketers, with each member contributing a special strength to the whole team.',
                        style: normal14,
                      ),
                    ),
                    Gap(32),
                    GradientShaderMask(
                      child: Text(
                        'Philosophy and Methodology',
                        style: medium20,
                      ),
                    ),
                    Gap(16),
                    GradientCard(
                      margin: EdgeInsets.all(0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Philosophy',
                              style: medium20,
                            ),
                            Gap(16),
                            Text(
                              '''We deliver comprehensive services that encompass the entire spectrum of your software solutions, offering full-cycle support from development to marketing. Acting as the bridge between your technical expertise and commercial realization, we provide targeted marketing campaigns and operational support to propel your software successfully into the market.''',
                              style: normal14,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(16),
                    GradientCard(
                      margin: EdgeInsets.all(0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Methodology',
                              style: medium20,
                            ),
                            Gap(16),
                            Text(
                              '''We don't just build your idea, we empower it. We provide ongoing support, data-driven insights, and agile adjustments to guarantee your product or service evolves and prospers in the everchanging market''',
                              style: normal14,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(16),
                    GradientShaderMask(
                      child: Text(
                        'Why to choose ITSP Group? (Hammering on our USPs)',
                        style: medium20,
                      ),
                    ),
                    Gap(16),
                    Text(
                      '''Our goal is to enable businesses to bring their ground-breaking ideas to life. We don't just develop software or craft marketing campaigns; we act as trusted partners, taking their idea from inception to commercial success.''',
                      style: normal14.copyWith(color: secondDarkColor),
                    ),
                    Gap(16),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        GradientCard(
                          borderRadius: 8,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Premium Customer Support',
                              style: normal12,
                            ),
                          ),
                        ),
                        CardPlain(
                          borderRadius: 8,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: GradientShaderMask(
                              child: Text(
                                'On-time delivery',
                                style: normal12,
                              ),
                            ),
                          ),
                        ),
                        CardPlain(
                          borderRadius: 8,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: GradientShaderMask(
                              child: Text(
                                '100% customer satisfaction',
                                style: normal12,
                              ),
                            ),
                          ),
                        ),
                        CardPlain(
                          borderRadius: 8,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: GradientShaderMask(
                              child: Text(
                                'Expert Marketers',
                                style: normal12,
                              ),
                            ),
                          ),
                        ),
                        CardPlain(
                          borderRadius: 8,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: GradientShaderMask(
                              child: Text(
                                'High-quality',
                                style: normal12,
                              ),
                            ),
                          ),
                        ),
                        CardPlain(
                          borderRadius: 8,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: GradientShaderMask(
                              child: Text(
                                'Flexible prices',
                                style: normal12,
                              ),
                            ),
                          ),
                        ),
                        CardPlain(
                          borderRadius: 8,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: GradientShaderMask(
                              child: Text(
                                'Easy Communication',
                                style: normal12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(16),
                    CardPlain(
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            GradientShaderMask(
                              child: Text(
                                'Premium Customer Support',
                                style: medium20,
                              ),
                            ),
                            Gap(16),
                            Text(
                              'We build trust and foster long-lasting partnerships with our clients. That’s why we offer an immersive customer-experience, designed to be your reliable guide while navigating the digital world.',
                              style: normal16.copyWith(color: secondDarkColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(16),
                    GradientShaderMask(
                      child: Text(
                        'Our Quality Standards',
                        style: medium24,
                      ),
                    ),
                    Gap(16),
                    GradientShaderMask(
                      child: Text(
                        '''We aim to surpass our clients' expectations and promote the software and digital marketing industries, by maintaining these professional quality standards. We are advocates of establishing enduring bonds based on openness, trust, and a common drive for achievement.''',
                        style: normal16,
                      ),
                    ),
                    Gap(16),
                    GradientShaderMask(
                      child: Text(
                        'Software Development Standards',
                        style: medium20,
                      ),
                    ),
                    Gap(16),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: []..addAll(
                            List.generate(
                              3,
                              (index) => CardPlain(
                                margin: EdgeInsets.all(0),
                                elevation: 0,
                                borderRadius: 24,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(officeAssetPNG),
                                        fit: BoxFit.fill),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Software Development Standards',
                                        style: medium20,
                                      ),
                                      Text(
                                        'Software Development Standards',
                                        style: medium20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ),
                    ),
                    Gap(navBarHeight),
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
