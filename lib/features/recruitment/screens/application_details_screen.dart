import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/features/recruitment/widgets/info_row.dart';

class ApplicationDetailsScreen extends StatelessWidget {
  const ApplicationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: lightGrayColor,
            child: SvgPicture.asset(
              categoriesBackgroundAssetSVG,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(8),
                    Row(
                      children: [
                        ButtonPlain(
                          onPressed: () => context.pop(),
                          width: 30,
                          color: backButtonColor,
                          child: Icon(
                            Icons.chevron_left,
                            color: mainColor,
                          ),
                        ),
                        Gap(8),
                        SectionTitle(title: 'Track applications'),
                      ],
                    ),
                    Gap(24),
                    GradientShaderMask(
                      child: Text(
                        'Preview',
                        style: semiBold24,
                      ),
                    ),
                    Gap(16),
                    Text(
                      'Contact Information',
                      style: bold20.copyWith(color: Colors.black),
                    ),
                    Gap(16),
                    InfoRow(
                      lableLeft: 'Full Name',
                      lableRight: 'Email',
                      subLableLeft: 'Zeyad.abdelazim',
                      subLableRight: 'Zeyad98@gmail.com',
                    ),
                    Gap(16),
                    InfoRow(
                      lableLeft: 'Phone Number',
                      lableRight: 'Gender',
                      subLableLeft: '011387339292',
                      subLableRight: 'Male',
                    ),
                    Gap(16),
                    InfoRow(
                      lableLeft: 'City',
                      lableRight: 'Area',
                      subLableLeft: 'Giza',
                      subLableRight: 'Haram',
                    ),
                    Gap(16),
                    Text(
                      'Contact Information',
                      style: bold20.copyWith(color: Colors.black),
                    ),
                    Gap(16),
                    InfoRow(
                      lableLeft: 'Cv',
                      lableRight: '',
                      subLableLeft: 'Zeyad abdelazim CV.pdf',
                      subLableRight: '',
                    ),
                    Gap(16),
                    Text(
                      'Question answer',
                      style: bold20.copyWith(color: Colors.black),
                    ),
                    Gap(16),
                    InfoRow(
                      lableLeft: 'Years of Exp.?',
                      lableRight: '',
                      subLableLeft: '99+',
                      subLableRight: '',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
