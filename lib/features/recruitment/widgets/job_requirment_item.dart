import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';

class JobRequirmentItem extends StatelessWidget {
  const JobRequirmentItem({this.icon, required this.text, super.key});
  final IconData? icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

        return GradientShaderMask(
          linearGradient:
              appThemeCubit.isLight ? lightLinearGradient : solidWhiteGradient,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Gap(8),
              Text(
                text,
                style: medium16,
              ),
            ],
          ),
        );
      },
    );
  }
}
