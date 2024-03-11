import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';

class SectionTitleWithAllButton extends StatelessWidget {
  const SectionTitleWithAllButton({
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
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

        return Padding(
          padding: padding,
          child: GradientShaderMask(
            linearGradient: appThemeCubit.isLight
                ? lightLinearGradient
                : solidWhiteGradient,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: semiBold20,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'all',
                        style: medium14,
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.white,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
