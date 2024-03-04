import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/onboarding/presentation/blocs/on_boarding_cubit/on_boarding_cubit.dart';
import 'package:itsp/features/onboarding/presentation/widgets/on_boarding_fab.dart';
import 'package:itsp/features/onboarding/presentation/widgets/on_boarding_indicator.dart';
import 'package:responsive_framework/responsive_framework.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: lightLinearGradient),
        child: BlocProvider(
          create: (context) => OnBoardingCubit(),
          child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
            builder: (context, state) {
              OnBoardingCubit cubit = OnBoardingCubit.getInstance(context);

              return SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                              ? 32
                              : 16),
                  child: IntroductionScreen(
                    key: _introKey,
                    globalBackgroundColor: Colors.transparent,
                    isProgress: false,
                    showNextButton: false,
                    showDoneButton: false,
                    onChange: cubit.changePage,
                    globalFooter: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 32, horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OnBoardingIndicator(activeIndex: cubit.pageIndex),
                          OnBoardingFab(
                            onPressed: () => cubit.nextPage(context, _introKey),
                          ),
                        ],
                      ),
                    ),
                    pages: [
                      PageViewModel(
                        image: Container(
                          constraints: BoxConstraints(maxWidth: 375),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                logoAssetSVG,
                                fit: BoxFit.fill,
                              ),
                              Gap(16),
                              Text(
                                loremText,
                                style: semiBold14,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        decoration: const PageDecoration(fullScreen: true),
                        title: '',
                        body: '',
                      ),
                      PageViewModel(
                        image: Container(
                          constraints: BoxConstraints(maxWidth: 375),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                officeAssetPNG,
                              ),
                              Gap(16),
                              Text(
                                loremText,
                                style: semiBold14,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        decoration: const PageDecoration(fullScreen: true),
                        title: '',
                        body: '',
                      ),
                      PageViewModel(
                        image: Container(
                          constraints: BoxConstraints(maxWidth: 375),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                mockupAssetPNG,
                              ),
                              Gap(16),
                              Text(
                                loremText,
                                style: semiBold14,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        decoration: const PageDecoration(fullScreen: true),
                        title: '',
                        body: '',
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
