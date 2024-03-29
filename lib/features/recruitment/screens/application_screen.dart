import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/shared/widgets/back_button.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/shared/widgets/text_field_with_title.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/features/recruitment/blocs/stepper_cubit/stepper_cubit.dart';
import 'package:itsp/features/recruitment/widgets/info_row.dart';
import 'package:itsp/features/recruitment/widgets/stepper_row.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StepperCubit(),
      child: BlocBuilder<AppThemeCubit, AppThemeState>(
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
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(8),
                          Row(
                            children: [
                              CustomBackButton(),
                              Gap(8),
                              SectionTitle(title: 'Ui UX Designer'),
                            ],
                          ),
                          Gap(24),
                          BlocBuilder<StepperCubit, StepperState>(
                            builder: (context, state) {
                              final StepperCubit cubit =
                                  StepperCubit.getInstance(context);

                              return Column(
                                children: [
                                  cubit.index == 0
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            GradientShaderMask(
                                              linearGradient:
                                                  appThemeCubit.isLight
                                                      ? lightLinearGradient
                                                      : solidWhiteGradient,
                                              child: Text(
                                                'Apply now',
                                                style: semiBold24,
                                              ),
                                            ),
                                            Gap(16),
                                            TextFieldWithTitle(
                                              title: 'Years of Exp.',
                                              hintText: '99+',
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16),
                                            ),
                                            CardPlain(
                                              color: Colors.white,
                                              elevation: 0,
                                              borderRadius: 12,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Image.asset(
                                                        person1AssetPNG,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Gap(8),
                                                    Flexible(
                                                      flex: 15,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Mariana-marketing manager-CV',
                                                            style: medium14
                                                                .copyWith(
                                                                    color:
                                                                        mainColor),
                                                          ),
                                                          Text(
                                                            'Uploaded 2 weeks Ago',
                                                            style: normal12
                                                                .copyWith(
                                                                    color:
                                                                        hintColor),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Gap(16),
                                            CardPlain(
                                              color: Colors.white,
                                              elevation: 0,
                                              borderRadius: 8,
                                              margin: EdgeInsets.all(0),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.settings_outlined,
                                                      color: mainColor,
                                                    ),
                                                    Gap(8),
                                                    Text(
                                                      'Resume Options',
                                                      style: normal16.copyWith(
                                                          color: mainColor),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            GradientShaderMask(
                                              linearGradient:
                                                  appThemeCubit.isLight
                                                      ? lightLinearGradient
                                                      : solidWhiteGradient,
                                              child: Text(
                                                'Preview',
                                                style: semiBold24,
                                              ),
                                            ),
                                            Gap(16),
                                            Text(
                                              'Contact Information',
                                              style: bold20.copyWith(
                                                  color:  appThemeCubit.isLight ? Colors.black : null),
                                            ),
                                            Gap(16),
                                            InfoRow(
                                              lableLeft: 'Full Name',
                                              lableRight: 'Email',
                                              subLableLeft: 'Zeyad.abdelazim',
                                              subLableRight:
                                                  'Zeyad98@gmail.com',
                                            ),
                                            Gap(16),
                                            InfoRow(
                                              lableLeft: 'Phone Number',
                                              lableRight: 'Gender',
                                              subLableLeft: '011387339292',
                                              subLableRight: 'Male',
                                            ),
                                            Gap(16),
                                            InfoRow(
                                              lableLeft: 'City',
                                              lableRight: 'Area',
                                              subLableLeft: 'Giza',
                                              subLableRight: 'Haram',
                                            ),
                                            Gap(16),
                                            Text(
                                              'Contact Information',
                                              style: bold20.copyWith(
                                                  color:  appThemeCubit.isLight ? Colors.black : null),
                                            ),
                                            Gap(16),
                                            InfoRow(
                                              lableLeft: 'Cv',
                                              lableRight: '',
                                              subLableLeft:
                                                  'Zeyad abdelazim CV.pdf',
                                              subLableRight: '',
                                            ),
                                            Gap(16),
                                            Text(
                                              'Question answer',
                                              style: bold20.copyWith(
                                                  color:  appThemeCubit.isLight ? Colors.black : null),
                                            ),
                                            Gap(16),
                                            InfoRow(
                                              lableLeft: 'Years of Exp.?',
                                              lableRight: '',
                                              subLableLeft: '99+',
                                              subLableRight: '',
                                            ),
                                          ],
                                        ),
                                  Gap(16),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: GradientButton(
                                          onPressed: cubit.index == 0
                                              ? () {
                                                  cubit.changeIndex(1);
                                                }
                                              : () {},
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16),
                                          child: Text(
                                            cubit.index == 0
                                                ? 'Next'
                                                : 'Confirm',
                                            style: semiBold14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
