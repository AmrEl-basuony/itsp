import 'package:flutter/material.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';

class TextFieldWithTitle extends StatelessWidget {
  const TextFieldWithTitle(
      {required this.title,
      required this.hintText,
      this.expands = false,
      this.obscureText = false,
      this.prefix,
      this.suffix,
      this.titleColor = mainColor,
      this.contentPadding,
      super.key});
  final String title, hintText;
  final bool expands, obscureText;
  final Widget? prefix, suffix;
  final Color titleColor;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: bold16.copyWith(color: titleColor),
        ),
        TextFormField(
          style: normal16.copyWith(color: mainColor),
          maxLines: expands ? 5 : 1,
          minLines: expands ? 1 : null,
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true,
            suffixIcon: suffix,
            prefixIcon: prefix,
            contentPadding: contentPadding,
            alignLabelWithHint: true,
            fillColor: Colors.white,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: bold16,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: hintText,
            hintStyle: normal16.copyWith(color: hintColor),
          ),
        ),
      ],
    );
  }
}
