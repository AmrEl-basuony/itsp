import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/routing/routes.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
import 'package:itsp/core/shared/widgets/back_button.dart';
import 'package:itsp/core/shared/widgets/text_field_with_title.dart';
import 'package:itsp/core/theming/colors.dart';
import 'package:itsp/core/shared/widgets/gradient_shader_mask.dart';
import 'package:itsp/core/theming/text_styles.dart';
import 'package:itsp/core/shared/widgets/gradient_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GradientShaderMask(
                              child: Checkbox(
                                value: false,
                                fillColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                checkColor: Colors.transparent,
                                onChanged: (val) {},
                              ),
                            ),
                            GradientShaderMask(
                              child: Text(
                                'stay signed in',
                                style: medium14,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: GradientShaderMask(
                            child: Text(
                              'Forget password?',
                              style: medium14,
                            ),
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
                              'Login',
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
                                    "Don't you have an account?",
                                    style: normal16,
                                  ),
                                ),
                              ),
                              WidgetSpan(
                                child: GestureDetector(
                                  onTap: () => context.replace(signupRoute),
                                  child: Text(
                                    " Sign up",
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
                    )
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
