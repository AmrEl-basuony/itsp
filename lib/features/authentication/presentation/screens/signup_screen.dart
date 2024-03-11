import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/routing/routes.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/shared/widgets/back_button.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/shared/widgets/text_field_with_dropdown.dart';
import 'package:itsp/core/shared/widgets/text_field_with_title.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context); 

        return Scaffold(
          backgroundColor: backgroundColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(8),
                    CustomBackButton(),
                    Gap(80),
                    GradientShaderMask(
                      child: SvgPicture.asset(
                        logoAssetSVG,
                        height: 25,
                      ),
                    ),
                    Gap(64),
                    TextFieldWithTitle(
                      title: 'Full-Name',
                      hintText: 'Name',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'E-mail',
                      hintText: 'example@gmail.com',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'Password',
                      obscureText: true,
                      hintText: '********************************',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'Confirm Password',
                      obscureText: true,
                      hintText: '********************************',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'Phone',
                      hintText: '+1000000000',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'City',
                      hintText: 'City name',
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'Area',
                      hintText: 'Area name',
                    ),
                    Gap(16),
                    Row(
                      children: [
                        Flexible(
                          child: TextFieldWithTitle(
                            title: 'Birthyear',
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
                    Gap(16),
                    TextFieldWithDropdown(
                      titleText: 'Gender',
                      items: [
                        DropdownMenuItem(value: 'male', child: Text('Male')),
                        DropdownMenuItem(
                            value: 'female', child: Text('Female')),
                      ],
                    ),
                    Gap(16),
                    Row(
                      children: [
                        GradientShaderMask(
                          child: Checkbox(
                            value: false,
                            fillColor:
                                MaterialStateProperty.all(Colors.transparent),
                            checkColor: Colors.transparent,
                            onChanged: (val) {},
                          ),
                        ),
                        GradientShaderMask(
                          child: Text(
                            'I agree to the terms and conditions.',
                            style: semiBold14,
                          ),
                        ),
                      ],
                    ),
                    Gap(16),
                    Row(
                      children: [
                        Expanded(
                          child: GradientButton(
                            onPressed: () {},
                            visualDensity: VisualDensity.comfortable,
                            child: Text(
                              'Register',
                              style: bold16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: GradientShaderMask(
                                  child: Text(
                                    "you have an account?",
                                    style: normal16,
                                  ),
                                ),
                              ),
                              WidgetSpan(
                                child: GestureDetector(
                                  onTap: () => context.replace(signinRoute),
                                  child: Text(
                                    " Sign in",
                                    style: normal16.copyWith(
                                      color: darkModeColor,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(32),
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
