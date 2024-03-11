import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/theming/colors.dart';

class CardPlain extends StatelessWidget {
  const CardPlain({
    this.child,
    this.margin = const EdgeInsets.symmetric(vertical: 16),
    this.elevation = 10,
    this.onTap,
    this.borderRadius = 16,
    this.color,
    super.key,
  });
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  final double? elevation;
  final double borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

        return Card(
          color: color ?? (appThemeCubit.isLight
                  ? null
                  : secondDarkColor),
          surfaceTintColor: Colors.transparent,
          margin: margin,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: child,
            ),
          ),
        );
      },
    );
  }
}
