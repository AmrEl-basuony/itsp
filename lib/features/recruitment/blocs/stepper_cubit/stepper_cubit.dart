import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'stepper_state.dart';

class StepperCubit extends Cubit<StepperState> {
  StepperCubit() : super(StepperInitial());

  static StepperCubit getInstance(context) =>
      BlocProvider.of<StepperCubit>(context);

  int _index = 0;

  int get index => _index;

  void changeIndex(int newIndex) {
    _index = newIndex;
    emit(StepperIndexChanged());
  }
}
