import 'package:flutter/material.dart';
import 'package:remotely_io/constants/colors.dart';

ThemeData primaryTheme = ThemeData(
  primaryColor: AppColors.colorPrimary,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColors.colorPrimary)
      .copyWith(secondary: AppColors.colorSecondary),
);

TextTheme primaryTextTheme = TextTheme().copyWith();
