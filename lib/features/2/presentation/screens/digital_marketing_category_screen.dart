import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DigitalMarketingCategoryScreen extends StatelessWidget {
  const DigitalMarketingCategoryScreen({super.key});

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
                    SectionTitle(title: 'Digital Marketing House'),
                  ],
                ),
                Gap(24),
                Text(
                  'Unleash Your Brand\'s Digital Superpowers with ITSP!',
                  textAlign: TextAlign.center,
                  style: semiBold16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      socialAssetPNG,
                    ),
                  ],
                ),
                Gap(16),
                SectionTitle(title: 'Performance Management'),
                Text(
                  'We are your digital marketing superheroes, transforming SEO struggles into keyword conquests, crafting captivating ad campaigns, and developing lead generation strategies that attract audience, effectively.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Social Media Management'),
                Text(
                  'At ITSP, we\'re content, engagement and algorithm wizards! We craft engaging & compelling posts, visually striking designs, and interactive stories that resonate with your target audience, leaving them wanting more.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Content Creation and Development'),
                Text(
                  'We don\'t just create content, we build relationships. We work closely with you to understandyour brand voice, target audience, and goals, ensuring every piece of content reflects yourunique identity and drives meaningful results.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Influencers’ Marketing'),
                Text(
                  'We trust in the power of authentic voices, trusted relationships, and reliable referrals. That\'s why, we offer influencer marketing services that go beyond the hype, connecting you with theideal influencers, who genuinely communicate with your audience to create a buzz.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Graphic Design'),
                Text(
                  'Our talented team of graphic designers deep-dive into your brand identity, translating yourvision into stunning visuals that resonate with your audience, and establish lasting brandrecognition.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Photography and Videography'),
                Text(
                  'We adapt our style & techniques to your projects, and capture visually-stunning masterpieces that spark emotions, tell your brand\'s story, and leave audiences captivated.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Video Editing'),
                Text(
                  'We master the art of storytelling, through weaving together visuals, sound, and motion like a symphony, creating a seamless and visually-enchanting experience that keeps viewers glued to the screen.',
                  style: normal16.copyWith(color: darkModeColor),
                ),
                Gap(16),
                SectionTitle(title: 'Voice Over'),
                Text(
                  'We transform written words into captivating voices that infuse your message with personality, emotion, and trust, driving viewers to click, convert, and connect with your brand.',
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
