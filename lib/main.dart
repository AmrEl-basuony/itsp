import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itsp/bloc_observer.dart';
import 'package:itsp/core/routing/router.dart';
import 'package:itsp/core/theming/themes.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayDark);
    return MaterialApp.router(
      routerConfig: router,
      theme: lightTheme,
      builder: (context, child) {
        return ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: double.infinity, name: TABLET),
          ],
        );
      },
    );
  }
}
