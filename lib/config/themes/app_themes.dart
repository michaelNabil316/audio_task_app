import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cet_e_services/core/utils/app_colors.dart';
import 'package:cet_e_services/core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: AppStrings.fontFamily,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 22.sp,
      ),
    ),
  );
}
