import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/routing/routes.dart';
import 'package:itsp/core/shared/widgets/button_plain.dart';
import 'package:itsp/core/shared/widgets/text_field_with_dropdown.dart';
import 'package:itsp/core/shared/widgets/text_field_with_title.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/features/2/presentation/widgets/card_plain.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                        SectionTitle(title: 'Hiring'),
                      ],
                    ),
                    GradientButton(
                      height: null,
                      onPressed: () => context.push(applicationsRoute),
                      visualDensity: VisualDensity.comfortable,
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
                  'Have a project in mind that you think we’d be a great fit for it? We’d love to know what you’re thinking',
                  style: normal16.copyWith(color: categoriesTextColor),
                ),
                Gap(16),
                TextFieldWithTitle(
                  title: 'Job',
                  hintText: 'Search by job title',
                  suffix: GradientButton(
                    onPressed: () {},
                    child: Icon(Icons.search),
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
                SectionTitle(title: 'Choose category'),
                Gap(16),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return CardPlain(
                      margin: EdgeInsets.all(0).copyWith(bottom: 16),
                      onTap: () => context.push(jobDetailsRoute),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.all(16.0).copyWith(bottom: 8),
                            child: Row(
                              children: [
                                Flexible(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: Image.asset(
                                        portfolioAssetPNG,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(8),
                                Flexible(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'software house',
                                        style:
                                            medium16.copyWith(color: mainColor),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet consectetur. Nulla felis consec non. Sed sagittis libero ',
                                        style:
                                            normal12.copyWith(color: mainColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                                gradient: lightLinearGradient,
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(8))),
                            child: Center(
                              child: Text(
                                'View all available jobs',
                                style: normal14,
                              ),
                            ),
                          ),
                        ],
                      ),
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
