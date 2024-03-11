import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/core/shared/widgets/gradient_outlined_button.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';

Future<void> showBigThanksDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
          AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

          return GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              decoration: BoxDecoration(
                  gradient: appThemeCubit.isLight
                      ? opaceLightLinearGradient
                      : opaceBlackLinearGradient),
              child: Dialog(
                insetPadding: EdgeInsets.all(36),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: lightLinearGradient,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: IntrinsicHeight(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(16),
                                Text(
                                  'Thank you for your trust',
                                  style: normal20,
                                ),
                                Gap(8),
                                Text(
                                  'we will contact you soon',
                                  style: normal16,
                                ),
                                Gap(16),
                                Row(
                                  children: [
                                    GradientButton(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 32),
                                      onPressed: () {},
                                      child: Text(
                                        'Back to Home ',
                                        style: bold16,
                                      ),
                                    ),
                                    Gap(32),
                                    GradientOutlinedButton(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 32),
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: Text(
                                        'Contact Us again',
                                        style: bold16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Image.asset(
                              handShakeAssetPNG,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
