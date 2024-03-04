import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/dialogs/thanks_dialog.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
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
                  children: [
                    SectionTitle(title: 'Contact us'),
                  ],
                ),
                Gap(16),
                Text(
                  'Have a project in mind that you think we’d be a great fit for it? We’d love to know what you’re thinking',
                  style: normal16.copyWith(color: categoriesTextColor),
                ),
                Gap(16),
                TextFieldWithTitle(
                    title: 'Full Name',
                    hintText: 'Input your full name in here'),
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
                  title: 'Messages',
                  hintText: 'Input your messages in here',
                  expands: true,
                ),
                Gap(16),
                Row(
                  children: [
                    Expanded(
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
