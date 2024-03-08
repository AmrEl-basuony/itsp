import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/screens/about_us_screen.dart';
import 'package:itsp/features/2/presentation/screens/digital_marketing_category_screen.dart';
import 'package:itsp/features/2/presentation/screens/marketing_and_business_house_category_screen.dart';
import 'package:itsp/features/2/presentation/screens/resources_screen.dart';
import 'package:itsp/features/2/presentation/screens/software_house_category_screen.dart';
import 'package:itsp/features/2/presentation/widgets/expert_team_member_card.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_card.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card_plain.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card_plain_wide.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card_wide.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/features/2/presentation/widgets/portfolio_card.dart';
import 'package:itsp/features/2/presentation/widgets/reel_card.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/features/2/presentation/widgets/section_title_with_all_button.dart';
import 'package:itsp/features/recruitment/screens/careers_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(8),
                GradientShaderMask(
                  child: SvgPicture.asset(
                    logoAssetSVG,
                    height: 25,
                  ),
                ),
                Gap(16),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GradientButton(
                          onPressed: () {},
                          padding: EdgeInsets.all(
                              ResponsiveBreakpoints.of(context)
                                      .largerThan(MOBILE)
                                  ? 16
                                  : 0),
                          child: const FaIcon(
                            FontAwesomeIcons.lightbulb,
                            size: 14,
                          ),
                        ),
                        Gap(16),
                        GradientButton(
                          onPressed: () => pushNewScreen(
                            context,
                            screen: CareersScreen(),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: ResponsiveBreakpoints.of(context)
                                      .largerThan(MOBILE)
                                  ? 32
                                  : 16),
                          child: Text(
                            'Careers',
                            style: normal12,
                          ),
                        ),
                        Gap(16),
                        GradientButton(
                          onPressed: () => pushNewScreen(
                            context,
                            screen: AboutUsScreen(),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: ResponsiveBreakpoints.of(context)
                                      .largerThan(MOBILE)
                                  ? 32
                                  : 16),
                          child: Text(
                            'About Us',
                            style: normal12,
                          ),
                        ),
                        Gap(16),
                        GradientButton(
                          onPressed: () => pushNewScreen(
                            context,
                            screen: ResourcesScreen(),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: ResponsiveBreakpoints.of(context)
                                      .largerThan(MOBILE)
                                  ? 32
                                  : 16),
                          child: Text(
                            'Resources',
                            style: normal12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(8),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    GradientCard(
                      margin: EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    homeCardTextStart,
                                    style: bold12,
                                  ),
                                  RichText(
                                    maxLines: 3,
                                    softWrap: true,
                                    text: TextSpan(
                                      text: homeCardText,
                                      style: normal12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Image.asset(phoneSmallAssetPNG),
                        ],
                      ),
                    ),
                    Image.asset(phoneAssetPNG),
                  ],
                ),
                SectionTitle(title: 'Our Solutions'),
                Row(
                  children: [
                    if (ResponsiveBreakpoints.of(context).smallerThan(TABLET))
                      GradientCategoryCard(
                        text: 'Software House',
                        icon: FontAwesomeIcons.code,
                        onTap: () => pushNewScreen(
                          context,
                          screen: SoftwareHouseCategoryScreen(),
                        ),
                      ),
                    if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                      Flexible(
                        child: GradientCategoryCardWide(
                          text: 'Software House',
                          icon: FontAwesomeIcons.code,
                          onTap: () => pushNewScreen(
                            context,
                            screen: SoftwareHouseCategoryScreen(),
                          ),
                        ),
                      ),
                    Gap(8),
                    if (ResponsiveBreakpoints.of(context).smallerThan(TABLET))
                      GradientCategoryCardPlain(
                        text: 'Marketing & Business House',
                        icon: FontAwesomeIcons.award,
                        onTap: () => pushNewScreen(
                          context,
                          screen: MarketingAndBusinessHouseCategoryScreen(),
                        ),
                      ),
                    if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                      GradientCategoryCardPlainWide(
                        text: 'Marketing & Business House',
                        icon: FontAwesomeIcons.award,
                        onTap: () => pushNewScreen(
                          context,
                          screen: MarketingAndBusinessHouseCategoryScreen(),
                        ),
                      ),
                    if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                      Gap(8),
                    if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                      Flexible(
                        child: GradientCategoryCardWide(
                          text: 'Digital Marketing House',
                          icon: FontAwesomeIcons.envelopeOpen,
                          onTap: () => pushNewScreen(
                            context,
                            screen: DigitalMarketingCategoryScreen(),
                          ),
                        ),
                      ),
                  ],
                ),
                if (ResponsiveBreakpoints.of(context).smallerThan(TABLET))
                  Gap(8),
                if (ResponsiveBreakpoints.of(context).smallerThan(TABLET))
                  GradientCategoryCardWide(
                    text: 'Digital Marketing House',
                    icon: FontAwesomeIcons.envelopeOpen,

                    onTap: () => pushNewScreen(
                      context,
                      screen: DigitalMarketingCategoryScreen(),
                    ),
                  ),
                Gap(8),
                SectionTitleWithAllButton(
                  title: 'Reels',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: Row(
                    children: []..addAll(
                        List.generate(
                          7,
                          (index) => ReelCard(),
                        ),
                      ),
                  ),
                ),
                Gap(16),
                SectionTitle(
                  title: 'Expert Team',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: Row(
                    children: []..addAll(
                        List.generate(
                          7,
                          (index) => ExpertTeamMemberCard(
                            title: 'Salma MO',
                            subTitle: 'Position: UI UX designer',
                            body:
                                'Lorem ipsum dolor sit amet consectetur. Lorem ipsum dolor sit amet consectetur.',
                          ),
                        ),
                      ),
                  ),
                ),
                Gap(8),
                SectionTitleWithAllButton(
                  title: 'Portfolio',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: Row(
                    children: []..addAll(
                        List.generate(
                          5,
                          (index) => PortfolioCard(),
                        ),
                      ),
                  ),
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
