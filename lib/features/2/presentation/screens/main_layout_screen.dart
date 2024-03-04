import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itsp/core/contants.dart';
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

    return PersistentTabView(
      context,
      navBarStyle: NavBarStyle.style8,
      navBarHeight: navBarHeight,
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.easeIn,
      ),
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          colorBehindNavBar: Colors.white),
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home_outlined),
          title: "Home",
          iconSize: 32,
          textStyle: normal12,
          activeColorPrimary: navBarActiveItemColor,
          inactiveColorPrimary: darkModeColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.folder_outlined),
          title: "Portfolio",
          iconSize: 32,
          activeColorPrimary: navBarActiveItemColor,
          inactiveColorPrimary: darkModeColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.view_carousel_outlined),
          iconSize: 32,
          title: "Reels",
          activeColorPrimary: navBarActiveItemColor,
          inactiveColorPrimary: darkModeColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.contact_page_outlined),
          title: "Contact",
          iconSize: 32,
          activeColorPrimary: navBarActiveItemColor,
          inactiveColorPrimary: darkModeColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person_outline),
          title: "Profile",
          iconSize: 32,
          activeColorPrimary: navBarActiveItemColor,
          inactiveColorPrimary: darkModeColor,
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
  }
}
