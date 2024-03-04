import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/features/recruitment/blocs/stepper_cubit/stepper_cubit.dart';

class StepperRow extends StatelessWidget {
  const StepperRow({
    super.key,
    required this.cubit,
  });

  final StepperCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        Flexible(
          child: GestureDetector(
            onTap: () => cubit.changeIndex(0),
            child: Container(
              height: 6,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius:
                    BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        Gap(8),
        Flexible(
          child: GestureDetector(
            onTap: () => cubit.changeIndex(1),
            child: Container(
              height: 6,
              decoration: BoxDecoration(
                color: cubit.index == 0
                    ? Colors.white
                    : mainColor,
                borderRadius:
                    BorderRadius.circular(4),
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
