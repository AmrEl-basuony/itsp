import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/dialogs/video_dialog.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ReelCard extends StatelessWidget {
  const ReelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

        return SizedBox(
          width: MediaQuery.of(context).size.width *
              (ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                  ? 0.4
                  : 0.75),
          child: AspectRatio(
            aspectRatio: 26 / 24,
            child: CardPlain(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => showVideoDialog(context),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        portfolioAssetPNG,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: backgroundColor.withOpacity(0.8),
                            child: GradientShaderMask(
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Mohamed El-hossiny',
                            style: semiBold14.copyWith(
                              color: appThemeCubit.isLight
                                  ? mainColor
                                  : Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                              gradient: lightLinearGradient,
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            "Tech Category",
                            style: medium8,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur. Nulla felis consectetur aliquet neque condimentum non. Sed sagittis libero ',
                      maxLines: 3,
                      style: normal10.copyWith(
                          color:
                              appThemeCubit.isLight ? mainColor : Colors.white),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
