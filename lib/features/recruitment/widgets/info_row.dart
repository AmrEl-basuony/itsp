import 'package:flutter/material.dart';
import 'package:itsp/core/theming/text_styles.dart';

class InfoRow extends StatelessWidget {
  const InfoRow(
      {required this.lableLeft,
      required this.subLableLeft,
      this.lableRight,
      this.subLableRight,
      super.key});
  final String? lableRight, subLableRight;
  final String lableLeft, subLableLeft;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                lableLeft,
                style: medium18.copyWith(color: Colors.black),
                overflow: TextOverflow.visible,
              ),
              Text(
                subLableLeft,
                style: normal16.copyWith(color: Colors.black),
                overflow: TextOverflow.visible,
              ),
            ],
          ),
        ),
        if (lableRight != null && subLableRight != null)
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  lableRight!,
                  style: medium18.copyWith(color: Colors.black),
                  overflow: TextOverflow.visible,
                ),
                Text(
                  subLableRight!,
                  style: normal16.copyWith(color: Colors.black),
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
