import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/routing/routes.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/features/2/presentation/widgets/carousel_with_main_image.dart';
import 'package:itsp/features/2/presentation/widgets/indented_text_list.dart';
import 'package:itsp/features/2/presentation/widgets/portfolio_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PortfolioProjectScreen extends StatelessWidget {
  const PortfolioProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List imgList = [
      categoryItemAssetPNG,
      portfolioAssetPNG,
      person2AssetPNG,
      person1AssetPNG,
    ];
    const textList = [
      'Intuitive Navigation: Navigate effortlessly through the sleek and intuitive interface, designed with user convenience in mind. Streamlined menus and thoughtful layouts make interaction a breeze.',
      'Modern Aesthetics: Experience a visual feast with a modern and visually pleasing design. Crisp graphics, smooth transitions, and an elegant color palette contribute to an aesthetic that not only pleases the eye but enhances overall usability.',
      "Responsive Design: Adaptability is key. Whether you're on a desktop, tablet, or mobile device, [Project Name] UI ensures a consistent and responsive experience, providing flexibility without compromising functionality.",
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                  ? 52
                  : 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(8),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ButtonPlain(
                        onPressed: () => Navigator.of(context).pop(),
                        width: 30,
                        child: Icon(
                          Icons.chevron_left,
                          color: mainColor,
                        ),
                      ),
                    ),
                    Gap(8),
                    CircleAvatar(
                      backgroundColor: mainColor,
                    ),
                    Gap(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'visit egypt project',
                          style: bold16.copyWith(color: mainColor),
                        ),
                        Text(
                          'loc camp',
                          style: medium14.copyWith(color: mainColor),
                        ),
                      ],
                    )
                  ],
                ),
                Gap(16),
                CarouselWithMainImage(imgList: imgList),
                Gap(24),
                Text(
                  'Description:',
                  style: semiBold20.copyWith(color: mainColor),
                ),
                Gap(8),
                Text(
                  """ntroducing [Project Name] UI: Elevating User Experience to New Heights Immerse yourself in a seamless and visually stunning experience with the [Project Name] UI – a cutting-edge interface designed to redefine user interaction. Our project boasts an intuitive design that effortlessly blends form and function, ensuring a user-friendly journey from start to finish.""",
                  style: normal16.copyWith(color: mainColor),
                ),
                Gap(16),
                Text(
                  'Key Features:',
                  style: semiBold20.copyWith(color: mainColor),
                ),
                Gap(8),
                IndentedTextList(
                  textList: textList,
                ),
                Gap(24),
                Row(
                  children: [
                    Flexible(
                      child: Divider(
                        color: mainColor,
                      ),
                    ),
                    Gap(16),
                    Text(
                      'Our Projects',
                      textAlign: TextAlign.center,
                      style: normal16.copyWith(color: mainColor),
                    ),
                    Gap(16),
                    Flexible(
                      child: Divider(
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                Gap(16),
                AlignedGridView.count(
                  itemCount: 7,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  clipBehavior: Clip.none,
                  crossAxisCount:
                      ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                          ? 4
                          : 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (BuildContext context, int index) {
                    return PortfolioItem(
                      onTap: () => context.go(portfolioProjectRoute),
                    );
                  },
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
