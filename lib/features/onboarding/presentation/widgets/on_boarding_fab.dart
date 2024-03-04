import 'package:flutter/material.dart';

class OnBoardingFab extends StatelessWidget {
  const OnBoardingFab({required this.onPressed, super.key});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      backgroundColor: Colors.white,
      child: const Icon(Icons.arrow_forward),
    );
  }
}
