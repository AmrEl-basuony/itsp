import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/theming/themes.dart';
import 'package:itsp/features/2/presentation/screens/contact_screen.dart';
import 'package:itsp/features/2/presentation/screens/home_screen.dart';
import 'package:itsp/features/2/presentation/screens/portfolio_screen.dart';
import 'package:itsp/features/2/presentation/screens/reels_screen.dart';
import 'package:itsp/features/recruitment/screens/profile_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class MainLayoutScreen extends StatelessWidget {
  const MainLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayLight);

    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

        return PersistentTabView(
          context,
          navBarStyle: NavBarStyle.style8,
          navBarHeight: navBarHeight,
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.easeIn,
          ),
          decoration: NavBarDecoration(
              gradient: appThemeCubit.isLight ? null : lightLinearGradient,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              colorBehindNavBar: Colors.white),
          items: [
            PersistentBottomNavBarItem(
              icon: const FaIcon(FontAwesomeIcons.house),
              title: "Home",
              textStyle: normal12,
              activeColorPrimary: navBarActiveItemColor,
              inactiveColorPrimary:
                  appThemeCubit.isLight ? darkModeColor : Colors.white,
            ),
            PersistentBottomNavBarItem(
              icon: const FaIcon(FontAwesomeIcons.folderOpen),
              title: "Portfolio",
              activeColorPrimary: navBarActiveItemColor,
              inactiveColorPrimary:
                  appThemeCubit.isLight ? darkModeColor : Colors.white,
            ),
            PersistentBottomNavBarItem(
              icon: const FaIcon(FontAwesomeIcons.vrCardboard),
              title: "Reels",
              activeColorPrimary: navBarActiveItemColor,
              inactiveColorPrimary:
                  appThemeCubit.isLight ? darkModeColor : Colors.white,
            ),
            PersistentBottomNavBarItem(
              icon: const FaIcon(FontAwesomeIcons.addressBook),
              title: "Contact",
              activeColorPrimary: navBarActiveItemColor,
              inactiveColorPrimary:
                  appThemeCubit.isLight ? darkModeColor : Colors.white,
            ),
            PersistentBottomNavBarItem(
              icon: const FaIcon(FontAwesomeIcons.user),
              title: "Profile",
              activeColorPrimary: navBarActiveItemColor,
              inactiveColorPrimary:
                  appThemeCubit.isLight ? darkModeColor : Colors.white,
            ),
          ],
          screens: const [
            HomeScreen(),
            PortfolioScreen(),
            ReelsScreen(),
            ContactScreen(),
            ProfileScreen(),
          ],
        );
      },
    );
  }
}
