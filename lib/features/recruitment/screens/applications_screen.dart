import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/routing/routes.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';

class ApplicationsScreen extends StatelessWidget {
  const ApplicationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: lightGrayColor,
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                        SectionTitle(title: 'UI UX Designer'),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(
                                          child: AspectRatio(
                                            aspectRatio: 1,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              child: Image.asset(
                                                person1AssetPNG,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
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
                                                    color: mainColor),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.pin_drop,
                                                    color: anotherGrayColor,
                                                  ),
                                                  Text(
                                                    'Giza, haram',
                                                    style: normal16.copyWith(
                                                        color:
                                                            anotherGrayColor),
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
                                              color: mainColor),
                                        ),
                                        Gap(8),
                                        Text(
                                          'Applied 2 weeks ago',
                                          style: normal14.copyWith(
                                              color: grayColor),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () =>
                                    context.push(applicationDetailsRoute),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8),
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
  }
}
