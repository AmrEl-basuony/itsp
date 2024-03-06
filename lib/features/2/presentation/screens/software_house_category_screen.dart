import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SoftwareHouseCategoryScreen extends StatelessWidget {
  const SoftwareHouseCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                  ? 32
                  : 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Gap(8),
                Row(
                  children: [
                    ButtonPlain(
                      onPressed: () => Navigator.of(context).pop(),
                      width: 30,
                      color: backButtonColor,
                      child: Icon(
                        Icons.chevron_left,
                        color: mainColor,
                      ),
                    ),
                    Gap(8),
                    SectionTitle(title: 'Software House'),
                  ],
                ),
                Gap(24),
                Text(
                  'We “potential” “Empower” “Cultivate” your business with our transformative Software Solutions.',
                  style: semiBold16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                Image.asset(
                  mockupBigAssetPNG,
                  fit: BoxFit.fill,
                ),
                Gap(16),
                SectionTitle(title: 'Websites'),
                Text(
                  '"Looking for a website? Look No Further! “Our platform seamlessly translates your designs into pristine, semantic code, primed for webpublication and developer handoff.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Mobile Applications'),
                Text(
                  'Transforming visions into vibrant experiences!We leverage our expertise to deliver bespoke solutions, with the ability to robust mobile appsthat resonate with end-users.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Desktop Applications'),
                Text(
                  'Enjoy uninterrupted access to Desktop applications anytime, anywhere!With seamless download and installation processes, users can Using a diverse array ofprogramming languages—including JavaScript, HTML, CSS, and much more.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'ERP Systems'),
                Text(
                  'Effortless efficiency with ERP software streamlines your operations in minutes ... plan, budget,predict, perform and report financial results effectively!',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'CRM Systems'),
                Text(
                  'Welcome to the future of customer connections!Customer Relationship Management with us centralizes all interactions, seamlessly integrates allyour sales, leads and customer data into a unified platform.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
