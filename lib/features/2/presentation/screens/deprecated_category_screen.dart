import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/theming/themes.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/features/2/presentation/widgets/category_item_row.dart';

class DeprecatedCategoryScreen extends StatelessWidget {
  const DeprecatedCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayDark);

    return Stack(
      children: [
        Scaffold(
          backgroundColor: secondDarkColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Gap(8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ButtonPlain(
                        onPressed: () => context.pop(),
                        width: 30,
                        child: Icon(
                          Icons.chevron_left,
                          color: mainColor,
                        ),
                      ),
                    ),
                    Gap(24),
                    Text(
                      'SOFTWARE HOUSE',
                      style: semiBold32,
                    ),
                    Gap(24),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.',
                      textAlign: TextAlign.center,
                      style: normal20,
                    ),
                    Gap(16),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return CategoryItemRow();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          child: SvgPicture.asset(
            categoriesBackgroundAssetSVG,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
