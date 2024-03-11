import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';

Future<void> showThanksDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit= AppThemeCubit.getInstance(context);

          return GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              decoration: BoxDecoration(gradient: appThemeCubit.isLight
                      ? opaceLightLinearGradient
                      : opaceBlackLinearGradient),
              child: Dialog(
                insetPadding: EdgeInsets.all(16),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height) * (0.4),
                  decoration: BoxDecoration(
                    gradient: lightLinearGradient,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: IntrinsicHeight(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            handShakeAssetPNG,
                            fit: BoxFit.fitWidth,
                          ),
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
