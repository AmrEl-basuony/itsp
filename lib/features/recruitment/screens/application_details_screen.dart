import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/shared/widgets/back_button.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/features/recruitment/widgets/info_row.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ApplicationDetailsScreen extends StatelessWidget {
  const ApplicationDetailsScreen({super.key});

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
                            SectionTitle(title: 'UI UX Designer'),
                          ],
                        ),
                        Gap(24),
                        GradientShaderMask(
                          linearGradient: appThemeCubit.isLight
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
                              color:
                                  appThemeCubit.isLight ? Colors.black : null),
                        ),
                        Gap(16),
                        InfoRow(
                          lableLeft: 'Full Name',
                          lableRight: 'Email',
                          subLableLeft: 'Zeyad.abdelazim',
                          subLableRight: 'Zeyad98@gmail.com',
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
                              color:
                                  appThemeCubit.isLight ? Colors.black : null),
                        ),
                        Gap(16),
                        InfoRow(
                          lableLeft: 'Cv',
                          subLableLeft: 'Zeyad abdelazim CV.pdf',
                        ),
                        Gap(16),
                        Text(
                          'Question answer',
                          style: bold20.copyWith(
                              color:
                                  appThemeCubit.isLight ? Colors.black : null),
                        ),
                        Gap(16),
                        InfoRow(
                          lableLeft: 'Years of Exp.?',
                          subLableLeft: '99+',
                        ),
                        Gap(16),
                        InfoRow(
                          lableLeft: 'what is you noticed period?',
                          subLableLeft: '2 weeks',
                        ),
                        Gap(16),
                        InfoRow(
                          lableLeft:
                              'What is your current monthly salary in local currency?',
                          subLableLeft: '20000',
                        ),
                        Gap(16),
                        InfoRow(
                          lableLeft: 'what is you noticed period?',
                          subLableLeft:
                              'Ensure accuracy, completeness, and compliance of financial data.',
                        ),
                        Gap(16),
                        InfoRow(
                          lableLeft: 'what is you noticed period?',
                          subLableLeft:
                              'Ensure accuracy, completeness, and compliance of financial data,Ensure accuracy, completeness, and compliance of financial data.',
                        ),
                        Gap(navBarHeight),
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
