part of 'stepper_cubit.dart';

@immutable
sealed class StepperState {}

final class StepperInitial extends StepperState {}
final class StepperIndexChanged extends StepperState {}
