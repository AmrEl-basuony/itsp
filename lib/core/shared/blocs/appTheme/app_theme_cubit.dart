import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itsp/core/theming/themes.dart';
import 'package:meta/meta.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeInitial());

  static AppThemeCubit getInstance(context) =>
      BlocProvider.of<AppThemeCubit>(context);

  ThemeMode _theme = ThemeMode.light;
  
  bool get isLight => _theme == ThemeMode.light;

  void changeTheme() {
    if (isLight) {
      _theme = ThemeMode.dark;
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayDark);
    } else {
      _theme = ThemeMode.light;
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayLight);
    }

    emit(AppThemeChange());
  }
}
