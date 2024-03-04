import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card_plain.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card_wide.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
                SectionTitle(title: 'Our Categories'),
                Gap(16),
                Text(
                  'Have a project in mind that you think we’d be a great fit for it? We’d love to know what you’re thinking',
                  style: normal16.copyWith(color: categoriesTextColor),
                ),
                Gap(24),
                Row(
                  children: [
                    GradientCategoryCard(
                      text: 'Software \nHouse',
                      icon: Icons.code,
                    ),
                    GradientCategoryCardPlain(
                      text: 'Bussiness \nHouse',
                      icon: Icons.workspace_premium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    GradientCategoryCard(
                      text: 'Marketing \nHouse',
                      icon: Icons.ssid_chart_outlined,
                    ),
                    GradientCategoryCardPlain(
                      text: 'E-Marketing \nHouse',
                      icon: Icons.bookmarks,
                    ),
                  ],
                ),
                GradientCategoryCardWide(
                  text: 'Media House',
                  icon: Icons.mail,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
