import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/routing/routes.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/expert_team_member_card.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_card.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card_plain.dart';
import 'package:itsp/features/2/presentation/widgets/gradient_category_card_wide.dart';
import 'package:itsp/core/shared/widgets/gradient_outlined_button.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/features/2/presentation/widgets/portfolio_card.dart';
import 'package:itsp/features/2/presentation/widgets/reel_card.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(8),
                GestureDetector(
                  onTap: () {
                    //TODO Remove after setting up appropriate button for profile
                    context.push(profileRoute);
                  },
                  child: GradientShaderMask(
                    child: SvgPicture.asset(
                      logoAssetSVG,
                      height: 25,
                    ),
                  ),
                ),
                Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GradientButton(
                      onPressed: () {},
                      padding: const EdgeInsets.all(8),
                      width: 30,
                      child: const Icon(
                        Icons.emoji_objects,
                        size: 14,
                      ),
                    ),
                    GradientButton(
                      onPressed: () {
                        context.push(jobsRoute);
                      },
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 4),
                      child: Text(
                        'Hiring',
                        style: normal12,
                      ),
                    ),
                    GradientButton(
                      onPressed: () {
                        context.push(aboutUsRoute);
                      },
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 4),
                      child: Text(
                        'About Us',
                        style: normal12,
                      ),
                    ),
                    GradientOutlinedButton(
                      onPressed: () {
                        context.push(signinRoute);
                      },
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 4),
                      child: GradientShaderMask(
                        child: Text(
                          'Login',
                          style: normal12,
                        ),
                      ),
                    ),
                  ],
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
                              child: RichText(
                                maxLines: 3,
                                softWrap: true,
                                text: TextSpan(
                                  text: homeCardTextStart,
                                  style: bold12,
                                  children: [
                                    TextSpan(
                                      text: homeCardText,
                                      style: normal12,
                                    ),
                                  ],
                                ),
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
                SectionTitle(title: 'Out Categories'),
                Row(
                  children: [
                    GradientCategoryCard(
                      text: 'Software \nHouse',
                      icon: Icons.code,
                      onTap: () => context.push(softwareHouseCategoryRoute),
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
                      onTap: () =>
                          context.push(marketingAndBusinessHouseCategoryRoute),
                    ),
                    GradientCategoryCardPlain(
                      text: 'E-Marketing \nHouse',
                      icon: Icons.bookmarks,
                      onTap: () => context.push(digitalMarketingCategoryRoute),
                    ),
                  ],
                ),
                GradientCategoryCardWide(
                  text: 'Media House',
                  icon: Icons.mail,
                ),
                Gap(8),
                SectionTitle(
                  title: 'Reels',
                  showAllButton: true,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: Row(
                    children: []..addAll(
                        List.generate(4, (index) => ReelCard()),
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
                          4,
                          (index) => ExpertTeamMemberCard(
                            title: 'Salma MO',
                            subTitle: 'Position: UI UX designer',
                            body:
                                'Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.',
                          ),
                        ),
                      ),
                  ),
                ),
                Gap(8),
                SectionTitle(
                  title: 'Portfolio',
                  showAllButton: true,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: Row(
                    children: []..addAll(
                        List.generate(
                          4,
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
