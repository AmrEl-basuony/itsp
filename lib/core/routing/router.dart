import 'package:go_router/go_router.dart';
import 'package:itsp/core/routing/routes.dart';
import 'package:itsp/features/2/presentation/screens/about_us_screen.dart';
import 'package:itsp/features/2/presentation/screens/digital_marketing_category_screen.dart';
import 'package:itsp/features/2/presentation/screens/main_layout_screen.dart';
import 'package:itsp/features/2/presentation/screens/marketing_and_business_house_category_screen.dart';
import 'package:itsp/features/2/presentation/screens/portfolio_project_screen.dart';
import 'package:itsp/features/2/presentation/screens/resources_screen.dart';
import 'package:itsp/features/2/presentation/screens/software_house_category_screen.dart';
import 'package:itsp/features/authentication/presentation/screens/signin_screen.dart';
import 'package:itsp/features/authentication/presentation/screens/signup_screen.dart';
import 'package:itsp/features/onboarding/presentation/screens/on_boarding_screen.dart';
import 'package:itsp/features/recruitment/screens/application_details_screen.dart';
import 'package:itsp/features/recruitment/screens/application_screen.dart';
import 'package:itsp/features/recruitment/screens/applications_screen.dart';
import 'package:itsp/features/recruitment/screens/job_details_screen.dart';
import 'package:itsp/features/recruitment/screens/careers_screen.dart';
import 'package:itsp/features/recruitment/screens/profile_screen.dart';

final router = GoRouter(
  initialLocation: onBoardingRoute,
  routes: [
    GoRoute(
      path: onBoardingRoute,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: mainLayoutRoute,
      builder: (context, state) => const MainLayoutScreen(),
    ),
    GoRoute(
      path: portfolioProjectRoute,
      builder: (context, state) => const PortfolioProjectScreen(),
    ),
    GoRoute(
      path: softwareHouseCategoryRoute,
      builder: (context, state) => const SoftwareHouseCategoryScreen(),
    ),
    GoRoute(
      path: marketingAndBusinessHouseCategoryRoute,
      builder: (context, state) =>
          const MarketingAndBusinessHouseCategoryScreen(),
    ),
    GoRoute(
      path: digitalMarketingCategoryRoute,
      builder: (context, state) => const DigitalMarketingCategoryScreen(),
    ),
    GoRoute(
      path: aboutUsRoute,
      builder: (context, state) => const AboutUsScreen(),
    ),
    GoRoute(
      path: signinRoute,
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: signupRoute,
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      path: profileRoute,
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: careersRoute,
      builder: (context, state) => const CareersScreen(),
    ),
    GoRoute(
      path: jobDetailsRoute,
      builder: (context, state) => const JobDetailsScreen(),
    ),
    GoRoute(
      path: applicationRoute,
      builder: (context, state) => const ApplicationScreen(),
    ),
    GoRoute(
      path: applicationsRoute,
      builder: (context, state) => const ApplicationsScreen(),
    ),
    GoRoute(
      path: applicationDetailsRoute,
      builder: (context, state) => const ApplicationDetailsScreen(),
    ),
    GoRoute(
      path: resourcesRoute,
      builder: (context, state) => const ResourcesScreen(),
    ),
  ],
);
