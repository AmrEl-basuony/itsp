import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/shared/widgets/text_field_with_dropdown.dart';
import 'package:itsp/core/shared/widgets/text_field_with_title.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';
import 'package:itsp/core/shared/widgets/gradient_outlined_button.dart';
import 'package:itsp/features/2/presentation/widgets/section_title.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

        return Scaffold(
          backgroundColor:
              appThemeCubit.isLight ? backgroundColor : darkModeColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionTitle(title: 'Profile'),
                        GradientButton(
                          onPressed: () {},
                          visualDensity: VisualDensity.comfortable,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Edit profile',
                            style: normal14,
                          ),
                        ),
                      ],
                    ),
                    Gap(16),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: mainColor,
                        ),
                        Gap(8),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GradientShaderMask(
                                linearGradient: appThemeCubit.isLight
                                    ? lightLinearGradient
                                    : solidWhiteGradient,
                                child: Text(
                                  'Hello User!',
                                  style: medium20,
                                ),
                              ),
                              GradientShaderMask(
                                linearGradient: appThemeCubit.isLight
                                    ? lightLinearGradient
                                    : solidWhiteGradient,
                                child: Text(
                                  "This is your profile page. You can see the progress you've made with your profile and manage your profile details",
                                  style: normal14,
                                  softWrap: true,
                                  maxLines: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(32),
                    Text(
                      'User Infrotmation',
                      style: normal20.copyWith(
                          color:
                              appThemeCubit.isLight ? grayColor : Colors.white),
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'Full Name',
                      titleColor:
                          appThemeCubit.isLight ? darkModeColor : Colors.white,
                      hintText: 'Name',
                    ),
                    Gap(16),
                    TextFieldWithDropdown(
                      titleColor:
                          appThemeCubit.isLight ? darkModeColor : Colors.white,
                      titleText: 'Gender',
                      items: [
                        DropdownMenuItem(value: 'male', child: Text('Male')),
                        DropdownMenuItem(
                            value: 'female', child: Text('Female')),
                      ],
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'E-mail',
                      titleColor:
                          appThemeCubit.isLight ? darkModeColor : Colors.white,
                      hintText: 'example@gmail.com',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'Password',
                      obscureText: true,
                      titleColor:
                          appThemeCubit.isLight ? darkModeColor : Colors.white,
                      hintText: '********************************',
                    ),
                    Gap(16),
                    Row(
                      children: [
                        Flexible(
                          child: TextFieldWithTitle(
                            title: 'Birthyear',
                            titleColor: appThemeCubit.isLight
                                ? darkModeColor
                                : Colors.white,
                            hintText: 'Year',
                          ),
                        ),
                        Gap(16),
                        Flexible(
                          child: TextFieldWithTitle(
                            title: '',
                            hintText: 'Month',
                          ),
                        ),
                        Gap(16),
                        Flexible(
                          child: TextFieldWithTitle(
                            title: '',
                            hintText: 'Day',
                          ),
                        ),
                      ],
                    ),
                    Gap(24),
                    Text(
                      'Contact Infrotmation',
                      style: normal20.copyWith(
                        color: appThemeCubit.isLight ? grayColor : Colors.white,
                      ),
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'City',
                      titleColor:
                          appThemeCubit.isLight ? darkModeColor : Colors.white,
                      hintText: 'City name',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'Area',
                      titleColor:
                          appThemeCubit.isLight ? darkModeColor : Colors.white,
                      hintText: 'Area name',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'Phone',
                      titleColor:
                          appThemeCubit.isLight ? darkModeColor : Colors.white,
                      hintText: '+1000000000',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'CV',
                      titleColor: darkModeColor,
                      hintText: 'Upload',
                      contentPadding: EdgeInsets.all(0),
                      prefix: GradientButton(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.arrowUpFromBracket,
                              size: 14,
                            ),
                            Gap(8),
                            Text(
                              'Update CV',
                              style: medium14,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Offstage(
                      offstage: false,
                      child: Column(
                        children: [
                          Gap(16),
                          Row(
                            children: [
                              Expanded(
                                child: GradientButton(
                                  onPressed: () {},
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Text(
                                    'Save',
                                    style: semiBold14,
                                  ),
                                ),
                              ),
                              Gap(16),
                              Expanded(
                                child: GradientOutlinedButton(
                                  onPressed: () {},
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Text(
                                    'Cancel',
                                    style: semiBold14,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Gap(navBarHeight),
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
