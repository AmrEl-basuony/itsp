import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/dialogs/big_thanks_dialog.dart';
import 'package:itsp/features/2/presentation/dialogs/thanks_dialog.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/modals/maps_modal.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/core/shared/widgets/text_field_with_title.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
                  horizontal:
                      ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                          ? 52
                          : 16)
              .copyWith(top: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SectionTitle(title: 'Contact us'),
                    GradientButton(
                      onPressed: () async => await showMapsModal(context),
                      visualDensity: VisualDensity.compact,
                      child: const FaIcon(
                        FontAwesomeIcons.locationPin,
                        size: 14,
                      ),
                    ),
                  ],
                ),
                Gap(16),
                Text(
                  'Reach new markets, engage new audiences. We\'re just a click away!',
                  style: normal16.copyWith(color: categoriesTextColor),
                ),
                Gap(16),
                GradientShaderMask(
                  child: Text(
                    'Think global, connect everywhere. Let\'s chat!',
                    style: medium18,
                  ),
                ),
                Gap(16),
                TextFieldWithTitle(
                    title: 'Full Name*',
                    hintText: 'Input your full name in here'),
                Gap(16),
                TextFieldWithTitle(
                    title: 'Company Name*',
                    hintText: 'Input your Company Name in here'),
                Gap(16),
                TextFieldWithTitle(
                    title: 'Website Link',
                    hintText: 'Input your website in here'),
                Gap(16),
                TextFieldWithTitle(
                    title: 'Phone',
                    hintText: 'Input your phone number in here'),
                Gap(16),
                TextFieldWithTitle(
                    title: 'Email Address',
                    hintText: 'Input your email address in here'),
                Gap(16),
                TextFieldWithTitle(
                    title: 'Service needed',
                    hintText: 'Input your service needed?'),
                Gap(16),
                TextFieldWithTitle(
                  title: 'Extra Info!',
                  hintText: 'Input your messages in here',
                  expands: true,
                ),
                Gap(16),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: GradientButton(
                        onPressed: () {
                          ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                              ? showBigThanksDialog(context)
                              : showThanksDialog(context);
                        },
                        height: null,
                        visualDensity: VisualDensity.comfortable,
                        child: Text(
                          'Send Messages',
                          style: normal14,
                        ),
                      ),
                    ),
                    if (!ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                      Spacer(),
                  ],
                ),
                Gap(navBarHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
