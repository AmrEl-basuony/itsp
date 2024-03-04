import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';

class MarketingAndBusinessHouseCategoryScreen extends StatelessWidget {
  const MarketingAndBusinessHouseCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    SectionTitle(title: 'Marketing & Business House'),
                  ],
                ),
                Gap(24),
                Text(
                  'Unleash the full potential of your brand with our marketing magic!',
                  textAlign: TextAlign.center,
                  style: semiBold16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                Image.asset(
                  marketingAssetPNG,
                  width: MediaQuery.of(context).size.width,
                ),
                Gap(16),
                SectionTitle(title: 'Marketing Consulting and Planning'),
                Text(
                  'Your business Potentiate with our dynamic marketing planning services. We\'ll identifyopportunities, map out strategies, and set you on the path to unstoppable growth and success.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Business Consulting and Planning'),
                Text(
                  'With our business planning process we integrate market analysis, financial forecasting, andactionable strategies to optimize resources and drive your market growth.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Market Analysis'),
                Text(
                  'Harness the potency of incisive market analysis to decode trends, forecast shifts, and seizeprofitable opportunities within your industry.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Branding and Corporate Identity'),
                Text(
                  'Forge a distinctive brand identity that captivates your audience, resonates with authenticity,and leaves an indelible mark on your market.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Brand Activations'),
                Text(
                  'Fuel your brand\'s momentum with our expert brand activation services!Whether through electrifying events, captivating campaigns, or engaging interactions, wespecialize in driving customer actions that propel your business forward.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Public Relations'),
                Text(
                  'Stay ahead of Trends!Our proactive approach to PR ensures that we stay ahead of trends, anticipate challenges, andcapitalize on opportunities to position your brand to be Top of Minds!',
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
