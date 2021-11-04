import 'package:flutter/material.dart';
import 'package:remotely_io/constants/colors.dart';
import 'package:remotely_io/constants/constants.dart';

ThemeData primaryTheme = ThemeData(
    primaryColor: AppColors.colorPrimary,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
        .copyWith(secondary: AppColors.colorSecondary),
    fontFamily: AppConstants.primaryFont,
    textTheme: primaryTextTheme);

TextTheme primaryTextTheme = TextTheme().copyWith();
