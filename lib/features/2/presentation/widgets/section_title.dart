import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    required this.title,
    this.padding = const EdgeInsets.all(0),
    this.onTap,
    super.key,
  });
  final String title;
  final EdgeInsetsGeometry padding;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit= AppThemeCubit.getInstance(context);

        return Padding(
          padding: padding,
          child: Wrap(
            children: [
              GradientShaderMask(
                linearGradient:  appThemeCubit.isLight
                              ? lightLinearGradient
                              : solidWhiteGradient,
                child: Text(
                  title,
                  style: semiBold20.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
