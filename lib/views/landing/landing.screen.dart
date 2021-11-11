import 'package:flutter/material.dart';
import 'package:remotely_io/component_widgets/custom_button.widget.dart';
import 'package:remotely_io/config/utils.dart';
import 'package:remotely_io/constants/app_text.dart';
import 'package:remotely_io/constants/colors.dart';
import 'package:remotely_io/constants/images.dart';
import 'package:remotely_io/constants/routes.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.splash_background,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  AppString.welcome,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: AppColors.colorPrimary,
                        fontWeight: FontWeight.w900,
                      ),
                ),
                Utils.verticalSpacer(space: 16),
                Text(
                  AppString.appName,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w800),
                ),
                Utils.verticalSpacer(space: 8),
                Text(
                  AppString.appDescription,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: AppColors.colorGreyLight,
                      fontWeight: FontWeight.w600),
                ),
                Utils.verticalSpacer(),
                CustomButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(context, AppRoutes.browseRoute, (route) => false),
                  text: AppString.browseShop,
                ),
                Utils.verticalSpacer(),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, AppRoutes.loginRoute),
                    child: Text(
                      AppString.login,
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
