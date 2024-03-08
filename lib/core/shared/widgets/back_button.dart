import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/core/theming/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonPlain(
      onPressed: () => Navigator.of(context).pop(),
      width: 30,
      color: backButtonColor,
      child: FaIcon(
        FontAwesomeIcons.angleLeft,
        size: 16,
        color: mainColor,
      ),
    );
  }
}
