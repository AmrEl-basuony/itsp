import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/shared/widgets/back_button.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/features/recruitment/screens/application_details_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ApplicationsScreen extends StatelessWidget {
  const ApplicationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

        return Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: appThemeCubit.isLight ? lightGrayColor : darkModeColor,
                child: SvgPicture.asset(
                  categoriesBackgroundAssetSVG,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                                ? 36
                                : 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(8),
                        Row(
                          children: [
                            CustomBackButton(),
                            Gap(8),
                            SectionTitle(title: 'Track applications'),
                          ],
                        ),
                        Gap(24),
                        ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          clipBehavior: Clip.none,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return CardPlain(
                              elevation: 0,
                              borderRadius: 8,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                person1AssetPNG,
                                                height: 75,
                                                width: 75,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Gap(16),
                                            Flexible(
                                              flex: 4,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Product Designer',
                                                    style: normal20.copyWith(
                                                        color: appThemeCubit
                                                                .isLight
                                                            ? mainColor
                                                            : Colors.white),
                                                  ),
                                                  Row(
                                                    children: [
                                                      FaIcon(
                                                        FontAwesomeIcons
                                                            .locationPin,
                                                        color: appThemeCubit
                                                                .isLight
                                                            ? anotherGrayColor
                                                            : Colors.white,
                                                        size: 16,
                                                      ),
                                                      Gap(8),
                                                      Text(
                                                        'Giza, haram',
                                                        style: normal16.copyWith(
                                                            color: appThemeCubit
                                                                    .isLight
                                                                ? anotherGrayColor
                                                                : Colors.white),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Gap(8),
                                        Wrap(
                                          spacing: 8,
                                          children: [
                                            Chip(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              label: Text(
                                                'Closed',
                                                style: normal14,
                                              ),
                                              backgroundColor: redColor,
                                            ),
                                            Chip(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              label: Text(
                                                'viewed',
                                                style: normal14.copyWith(
                                                    color: blueColor),
                                              ),
                                              backgroundColor: cyanColor,
                                            ),
                                            Chip(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              label: Text(
                                                'Not viewed',
                                                style: normal14.copyWith(
                                                    color: grayColor),
                                              ),
                                              backgroundColor: lightGrayColor,
                                            ),
                                            Chip(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              label: Text(
                                                'In consideration',
                                                style: normal14.copyWith(
                                                    color: brownColor),
                                              ),
                                              backgroundColor: yellowColor,
                                            ),
                                            Chip(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              label: Text(
                                                'Selected',
                                                style: normal14.copyWith(
                                                    color: lightGreenColor),
                                              ),
                                              backgroundColor: greenColor,
                                            ),
                                            Chip(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              label: Text(
                                                'Not selected',
                                                style: normal14.copyWith(
                                                    color: orangeColor),
                                              ),
                                              backgroundColor: lightOrangeColor,
                                            ),
                                          ],
                                        ),
                                        Gap(8),
                                        Row(
                                          children: [
                                            Text(
                                              '4000-6000 K',
                                              style: medium16.copyWith(
                                                  color: appThemeCubit.isLight
                                                      ? mainColor
                                                      : Colors.white),
                                            ),
                                            Gap(8),
                                            Text(
                                              'Applied 2 weeks ago',
                                              style: normal14.copyWith(
                                                  color: appThemeCubit.isLight
                                                      ? grayColor
                                                      : Colors.white),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => pushNewScreen(
                                      context,
                                      screen: ApplicationDetailsScreen(),
                                    ),
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      decoration: BoxDecoration(
                                        gradient: lightLinearGradient,
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(8)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'View Application',
                                          style: normal16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
