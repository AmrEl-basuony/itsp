import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnBoardingFab extends StatelessWidget {
  const OnBoardingFab({required this.onPressed, super.key});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      backgroundColor: Colors.white,
      child: const FaIcon(FontAwesomeIcons.arrowRight),
    );
  }
}
