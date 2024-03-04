import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';

class TextFieldWithDropdown extends StatelessWidget {
  const TextFieldWithDropdown(
      {required this.titleText,
      this.titleColor = mainColor,
      required this.items,
      this.onChanged,
      super.key});
  final Color titleColor;
  final String titleText;
  final List<DropdownMenuItem<dynamic>>? items;
  final void Function(dynamic)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: bold16.copyWith(color: titleColor),
        ),
        DropdownButtonFormField2(
          value: items?.first.value,
          style: normal14.copyWith(color: Colors.black),
          iconStyleData: IconStyleData(
            icon: Icon(Icons.expand_more),
            openMenuIcon: Icon(Icons.expand_less),
          ),
          items: items,
          buttonStyleData: ButtonStyleData(
              width:
                  0), //remove prefix reserved size to prevent overflow on smaller devices
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8),
            filled: true,
            alignLabelWithHint: true,
            fillColor: Colors.white,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: bold16,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            hintStyle: normal16.copyWith(color: hintColor),
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
