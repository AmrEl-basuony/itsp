import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/text_styles.dart';

class JobRequirmentItem extends StatelessWidget {
  const JobRequirmentItem({this.icon, required this.text, super.key});
  final IconData? icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GradientShaderMask(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Gap(8),
        GradientShaderMask(
          child: Text(
            text,
            style: medium16,
          ),
        ),
      ],
    );
  }
}
