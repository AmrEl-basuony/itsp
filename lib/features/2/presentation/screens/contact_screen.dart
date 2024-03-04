import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/dialogs/thanks_dialog.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/modals/maps_modal.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/core/shared/widgets/text_field_with_title.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0).copyWith(top: 8),
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
                      child: const Icon(
                        Icons.location_on,
                        size: 14,
                      ),
                    ),
                  ],
                ),
                Gap(16),
                Text(
                  'Have a project in mind that you think we’d be a great fit for it? We’d love to know what you’re thinking',
                  style: normal16.copyWith(color: categoriesTextColor),
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
                          showThanksDialog(context);
                        },
                        height: null,
                        visualDensity: VisualDensity.comfortable,
                        child: Text(
                          'Send Messages',
                          style: normal14,
                        ),
                      ),
                    ),
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
