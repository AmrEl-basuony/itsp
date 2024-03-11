import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/screens/portfolio_project_screen.dart';
import 'package:itsp/features/2/presentation/widgets/portfolio_item.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

        return Scaffold(
          backgroundColor:
              appThemeCubit.isLight ? backgroundColor : darkModeColor,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                      horizontal:
                          ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                              ? 32
                              : 16)
                  .copyWith(top: 8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: 'Portfolio'),
                    Gap(16),
                    Text(
                      'Have a project in mind that you think we’d be a great fit for it? We’d love to know what you’re thinking',
                      style: normal16.copyWith(
                        color: appThemeCubit.isLight
                            ? categoriesTextColor
                            : Colors.white,
                      ),
                      overflow: TextOverflow.visible,
                    ),
                    Gap(16),
                    AlignedGridView.count(
                      itemCount: 7,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      clipBehavior: Clip.none,
                      crossAxisCount:
                          ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                              ? 4
                              : 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      itemBuilder: (BuildContext context, int index) {
                        return PortfolioItem(
                          onTap: () => pushNewScreen(
                            context,
                            screen: PortfolioProjectScreen(),
                          ),
                        );
                      },
                    ),
                    Gap(navBarHeight),
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
