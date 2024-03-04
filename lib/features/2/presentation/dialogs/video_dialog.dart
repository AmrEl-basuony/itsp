import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/features/2/presentation/widgets/custom_youtube_player_.dart';

Future<void> showVideoDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: () => context.pop(),
        child: Container(
          decoration: BoxDecoration(gradient: opaceLightLinearGradient),
          child: Center(
            child: Dialog(
              insetPadding: EdgeInsets.all(8),
              child: SizedBox(
                height: (MediaQuery.of(context).size.width) * (9 / 16),
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CustomYoutubePlayer(),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
