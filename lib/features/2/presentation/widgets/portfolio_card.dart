import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit= AppThemeCubit.getInstance(context);
        
        return SizedBox(
          width: MediaQuery.of(context).size.width *
              (ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                  ? 0.35
                  : 0.6),
          child: CardPlain(
            margin: EdgeInsets.all(4),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: AspectRatio(
                aspectRatio:
                    ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                        ? 1
                        : 0.88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          portfolioAssetPNG,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Gap(8),
                    Text(
                      'Visit Egypt',
                      style: semiBold14.copyWith(color: appThemeCubit.isLight? mainColor:Colors.white),
                    ),
                    Gap(4),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur. Nulla felis consectetur aliquet neque condimentum non',
                      maxLines: 2,
                      style: normal10.copyWith(color: appThemeCubit.isLight? mainColor:Colors.white),
                    ),
                    Gap(8),
                    Spacer(),
                    GradientButton(
                      onPressed: () {},
                      child: Text(
                        'More Details',
                        style: medium14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
