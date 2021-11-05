import 'package:flutter/material.dart';
import 'package:remotely_io/component_widgets/custom_button.widget.dart';
import 'package:remotely_io/component_widgets/custom_outlined_button.widget.dart';
import 'package:remotely_io/component_widgets/custom_phone_number_input.dart';
import 'package:remotely_io/component_widgets/custom_text_field.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/app_text.dart';
import 'package:remotely_io/constants/colors.dart';
import 'package:remotely_io/constants/images.dart';
import 'package:remotely_io/constants/routes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final facebookButton = CustomOutlinedButton(
        text: AppString.facebookLogin, icon: AppImages.ic_facebook_logo);

    final googleButton = CustomOutlinedButton(
        text: AppString.googleLogin, icon: AppImages.ic_google_logo);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Utils.verticalSpacer(space: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppString.userWelcome,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                        fontSize: 12,
                        color: AppColors.colorGreyDeeper,
                        fontWeight: FontWeight.w600),
                  ),
                  Utils.horizontalSpacer(space: 8),
                  Image.asset(
                    AppImages.ic_hand_wave,
                    width: 24,
                    height: 24,
                  )
                ],
              ),
              Text.rich(
               TextSpan(text:  AppString.welcomeTo, children: [
                 TextSpan(text: AppString.appName, style: TextStyle(color: AppColors.colorPrimary))
               ]),
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              Utils.verticalSpacer(space: 30),
              googleButton,
              Utils.verticalSpacer(),
              facebookButton,
              Utils.verticalSpacer(),
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppString.orText,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: AppColors.colorGreyDeep),
                ),
              ),
              Utils.verticalSpacer(),
              CustomTextField(
                hintText: AppString.emailHintText,
                title: AppString.emailText,
                keyboardType: TextInputType.emailAddress,
              ),
              Utils.verticalSpacer(space: 8),
              CustomPhoneNumberInput(
                onChanged: (value) {},
                title: AppString.phoneNumber,
              ),
              Utils.verticalSpacer(space: 8),
              CustomTextField(
                title: AppString.passwordText,
                isPasswordField: true,
              ),
              Utils.verticalSpacer(space: 42),
              CustomButton(
                text: AppString.signUp,
                onPressed: () {},
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.alreadyHaveAccount,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: AppColors.colorGreyDeeper),
                  ),
                  TextButton(
                    onPressed: ()=> Navigator.popAndPushNamed(context, AppRoutes.loginRoute),
                    child: Text(
                      AppString.loginText,
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: AppColors.colorSecondary,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
