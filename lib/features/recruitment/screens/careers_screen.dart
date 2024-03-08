import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/shared/widgets/back_button.dart';
import 'package:itsp/core/shared/widgets/text_field_with_dropdown.dart';
import 'package:itsp/core/shared/widgets/text_field_with_title.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';
import 'package:itsp/features/recruitment/screens/applications_screen.dart';
import 'package:itsp/features/recruitment/screens/job_details_screen.dart';
import 'package:itsp/features/recruitment/widgets/job_details_card.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CareersScreen extends StatelessWidget {
  const CareersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                  ? 36
                  : 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [CustomBackButton(),
                        Gap(8),
                        SectionTitle(title: 'Careers'),
                      ],
                    ),
                    GradientButton(
                      onPressed: () => pushNewScreen(
                        context,
                        screen: ApplicationsScreen(),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Applications',
                        style: normal14,
                      ),
                    ),
                  ],
                ),
                Gap(24),
                Text(
                  'Code, Market, Innovate. Make a global impact. Join our team!',
                  style: normal16.copyWith(color: categoriesTextColor),
                  maxLines: 2,
                ),
                Gap(16),
                TextFieldWithTitle(
                  title: 'Job',
                  hintText: 'Search by job title',
                  suffix: GradientButton(
                    onPressed: () {},
                    child: FaIcon(FontAwesomeIcons.magnifyingGlass),
                  ),
                ),
                Gap(16),
                Row(
                  children: [
                    Flexible(
                      child: TextFieldWithDropdown(
                        titleText: 'Category',
                        items: []..addAll(
                            List.generate(
                              3,
                              (index) => DropdownMenuItem(
                                child: Text(
                                  'Software House',
                                  style: normal14.copyWith(color: Colors.black),
                                ),
                                value: index,
                              ),
                            ),
                          ),
                        onChanged: (val) {},
                      ),
                    ),
                    Gap(16),
                    Flexible(
                      child: TextFieldWithDropdown(
                        titleText: 'Job Status',
                        items: []..addAll(
                            List.generate(
                              3,
                              (index) => DropdownMenuItem(
                                child: Text(
                                  'on site',
                                  style: normal14.copyWith(color: Colors.black),
                                ),
                                value: index,
                              ),
                            ),
                          ),
                        onChanged: (val) {},
                      ),
                    ),
                  ],
                ),
                Gap(16),
                SectionTitle(title: 'Choose Job'),
                Gap(16),
                ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                    ? AlignedGridView.count(
                        itemCount: 7,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        clipBehavior: Clip.none,
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        itemBuilder: (BuildContext context, int index) =>
                            JobDetailsCard(),
                      )
                    : ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        clipBehavior: Clip.none,
                        itemBuilder: (context, index) {
                          return CardPlain(
                            margin: EdgeInsets.all(0).copyWith(bottom: 16),
                            onTap: () => pushNewScreen(
                              context,
                              screen: JobDetailsScreen(),
                            ),
                            child: JobDetailsCard(),
                          );
                        },
                      ),
                Gap(32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
