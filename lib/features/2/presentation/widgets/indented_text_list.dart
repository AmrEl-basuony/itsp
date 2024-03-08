import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';

class IndentedTextList extends StatelessWidget {
  const IndentedTextList({required this.textList, super.key});
  final List textList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: []..addAll(
          List.generate(
            textList.length,
            (index) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24,
                  child: Text(
                    "${index + 1}.",
                    style: normal16.copyWith(color: mainColor),
                  ),
                ),
                Flexible(
                  child: Text(
                    "${textList[index]}",
                    style: normal16.copyWith(color: mainColor),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
