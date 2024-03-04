import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'carousel_with_main_image_state.dart';

class CarouselWithMainImageCubit extends Cubit<CarouselWithMainImageState> {
  CarouselWithMainImageCubit() : super(CarouselWithMainImageInitial());

  static CarouselWithMainImageCubit getInstance(context) =>
      BlocProvider.of<CarouselWithMainImageCubit>(context);

  int _imgIndex = 0;
  int get imdIndex => _imgIndex;

  void changeMainImage(int newIndex) {
    _imgIndex = newIndex;

    emit(CarouselWithMainImageUpdate());
  }
}
