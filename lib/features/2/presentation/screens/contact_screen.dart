import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:itsp/core/contants.dart';
import 'package:itsp/core/shared/blocs/appTheme/app_theme_cubit.dart';
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
    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        AppThemeCubit appThemeCubit = AppThemeCubit.getInstance(context);

        return Scaffold(
          backgroundColor:
              appThemeCubit.isLight ? backgroundColor : darkModeColor,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                      horizontal:
                          ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                              ? 32
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
                      style: normal16.copyWith(
                          color: appThemeCubit.isLight
                              ? categoriesTextColor
                              : Colors.white),
                      overflow: TextOverflow.visible,
                    ),
                    Gap(16),
                    GradientShaderMask(
                      linearGradient: appThemeCubit.isLight
                          ? lightLinearGradient
                          : solidWhiteGradient,
                      child: Text(
                        'Think global, connect everywhere. Let\'s chat!',
                        style: medium18,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    Gap(16),
                    TextFieldWithTitle(
                        title: 'Full Name*',
                        titleColor:
                            appThemeCubit.isLight ? mainColor : Colors.white,
                        hintText: 'Input your full name in here'),
                    Gap(16),
                    TextFieldWithTitle(
                        title: 'Company Name*',
                        titleColor:
                            appThemeCubit.isLight ? mainColor : Colors.white,
                        hintText: 'Input your Company Name in here'),
                    Gap(16),
                    TextFieldWithTitle(
                        title: 'Website Link',
                        titleColor:
                            appThemeCubit.isLight ? mainColor : Colors.white,
                        hintText: 'Input your website in here'),
                    Gap(16),
                    TextFieldWithTitle(
                        title: 'Phone',
                        titleColor:
                            appThemeCubit.isLight ? mainColor : Colors.white,
                        hintText: 'Input your phone number in here'),
                    Gap(16),
                    TextFieldWithTitle(
                        title: 'Email Address',
                        titleColor:
                            appThemeCubit.isLight ? mainColor : Colors.white,
                        hintText: 'Input your email address in here'),
                    Gap(16),
                    TextFieldWithTitle(
                        title: 'Service needed',
                        titleColor:
                            appThemeCubit.isLight ? mainColor : Colors.white,
                        hintText: 'Input your service needed?'),
                    Gap(16),
                    TextFieldWithTitle(
                      title: 'Extra Info!',
                      titleColor:
                          appThemeCubit.isLight ? mainColor : Colors.white,
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
                              ResponsiveBreakpoints.of(context)
                                      .largerThan(MOBILE)
                                  ? showBigThanksDialog(context)
                                  : showThanksDialog(context);
                            },
                            visualDensity: VisualDensity.comfortable,
                            child: Text(
                              'Send Messages',
                              style: normal14,
                            ),
                          ),
                        ),
                        if (!ResponsiveBreakpoints.of(context)
                            .largerThan(MOBILE))
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
      },
    );
  }
}
