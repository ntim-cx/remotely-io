import 'package:flutter/material.dart';
import 'package:remotely_io/component_widgets/custom_button.widget.dart';
import 'package:remotely_io/component_widgets/custom_text_field.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/app_text.dart';
import 'package:remotely_io/constants/colors.dart';
import 'package:remotely_io/constants/images.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final facebookButton = customAuthButton(
        text: AppString.facebookLogin,
        context: context,
        icon: AppImages.ic_facebook_logo);

    final googleButton = customAuthButton(
        text: AppString.googleLogin,
        context: context,
        icon: AppImages.ic_google_logo);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Utils.verticalSpacer(space: 42),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Utils.verticalSpacer(space: 45),
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
              Text(
                AppString.welcomeBack,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              Utils.verticalSpacer(space: 45),
              googleButton,
              Utils.verticalSpacer(),
              facebookButton,
              Utils.verticalSpacer(space:28),
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
              Utils.verticalSpacer(space:28),
              CustomTextField(
                hintText: AppString.emailHintText,
                title: AppString.emailText,
                keyboardType: TextInputType.emailAddress,
              ),
              Utils.verticalSpacer(space: 8),
              CustomTextField(
                title: AppString.passwordText,
                isPasswordField: true,
              ),
              Utils.verticalSpacer(space: 42),
              CustomButton(
                text: AppString.loginText,
                onPressed: () {},
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.forgotPassword,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: AppColors.colorGreyDeeper),
                  ),
                  Text(
                    AppString.signUp,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: AppColors.colorSecondary, fontWeight: FontWeight.w600),
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

Widget customAuthButton(
    {String text, Function onPressed, BuildContext context, String icon}) {
  return MaterialButton(
    onPressed: onPressed,
    color: Colors.transparent,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 28,
            height: 28,
          ),
          Utils.horizontalSpacer(space: 20),
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: AppColors.colorGreyDeep, width: 1.0)),
  );
}
