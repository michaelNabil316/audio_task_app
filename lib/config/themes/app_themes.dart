import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/utils/app_strings.dart';
import 'package:get/get.dart' as getx;

changeThemeMode(bool isDark) {
  getx.Get.changeTheme(isDark == true ? darkMode : lightMode);
  getx.Get.changeThemeMode(isDark == true ? ThemeMode.light : ThemeMode.dark);
}

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

ThemeData lightMode = ThemeData(
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
ThemeData darkMode = ThemeData(
  primaryColor: AppColors.darkColor,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkColor,
  fontFamily: AppStrings.fontFamily,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: AppColors.darkColor,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: 22.sp,
    ),
  ),
);
