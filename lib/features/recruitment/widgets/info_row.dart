import 'package:flutter/material.dart';
import 'package:itsp/core/theming/text_styles.dart';

class InfoRow extends StatelessWidget {
  const InfoRow(
      {required this.lableLeft,
      required this.lableRight,
      required this.subLableLeft,
      required this.subLableRight,
      super.key});
  final String lableLeft, lableRight, subLableLeft, subLableRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(),
              Text(
                lableLeft,
                style: medium18.copyWith(color: Colors.black),
              ),
              Text(
                subLableLeft,
                style: normal16.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(),
              Text(
                lableRight,
                style: medium18.copyWith(color: Colors.black),
              ),
              Text(
                subLableRight,
                style: normal16.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
