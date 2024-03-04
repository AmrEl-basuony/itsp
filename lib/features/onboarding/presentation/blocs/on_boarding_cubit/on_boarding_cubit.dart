import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:itsp/core/routing/routes.dart';
import 'package:meta/meta.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  static OnBoardingCubit getInstance(context) =>
      BlocProvider.of<OnBoardingCubit>(context);

  int _pageIndex = 0;

  static const int pagesCount = 3;

  int get pageIndex => _pageIndex;

  nextPage(BuildContext context, GlobalKey<IntroductionScreenState> key) {
    if (_pageIndex < pagesCount - 1) {
      changePage(++_pageIndex);
      key.currentState?.next();
    } else {
      context.go(mainLayoutRoute);
    }
  }

  changePage(int newIndex) {
    _pageIndex = newIndex;
    emit(OnBoardingPageChanged());
  }
}
