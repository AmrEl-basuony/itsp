import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_card.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';

class DeprecatedAboutUsScreen extends StatelessWidget {
  const DeprecatedAboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(8),
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
                    SectionTitle(title: 'About Us'),
                  ],
                ),
                Gap(24),
                Text(
                  'Have a project in mind that you think we’d be a great fit for it? We’d love to know what you’re thinking',
                  style: normal16.copyWith(color: categoriesTextColor),
                ),
                Gap(16),
                GradientCard(
                  margin: EdgeInsets.all(0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'vision',
                          style: semiBold16,
                        ),
                        Text(
                          '''Translating Words … Connecting Cultures! 
Loc Camp’s vision is based on a culture of openness, accountability and integrity, to become one of the leading, fast-growing, and most innovative, creative & cost-effective language service providers in the world.''',
                          style: normal12,
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(16),
                CardPlain(
                  margin: EdgeInsets.all(0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'vision',
                          style: semiBold16.copyWith(color: mainColor),
                        ),
                        Text(
                          '''Translating Words … Connecting Cultures! 
Loc Camp’s vision is based on a culture of openness, accountability and integrity, to become one of the leading, fast-growing, and most innovative, creative & cost-effective language service providers in the world.''',
                          style: normal12.copyWith(color: mainColor),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'vision',
                          style: semiBold16,
                        ),
                        Text(
                          '''Translating Words … Connecting Cultures! 
Loc Camp’s vision is based on a culture of openness, accountability and integrity, to become one of the leading, fast-growing, and most innovative, creative & cost-effective language service providers in the world.''',
                          style: normal12,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
