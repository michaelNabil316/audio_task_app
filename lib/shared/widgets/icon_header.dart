import 'package:cet_e_services/core/utils/app_colors.dart';
import 'package:cet_e_services/core/utils/app_images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconHeader extends StatelessWidget {
  final double? iconWidth;
  final double? iconHeight;
  final double? raduis;
  final String? iconPath;
  final String? parentScreenTitle;
  final String? subTitle;
  const IconHeader(
      {super.key,
      this.iconPath,
      this.raduis,
      this.iconWidth,
      this.iconHeight,
      this.parentScreenTitle,
      this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.redColorwithOpacity,
            spreadRadius: 30,
            blurRadius: 40,
            offset: Offset(0, 20),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: raduis?.r ?? 80.r,
        backgroundColor: AppColors.primaryColor,
        child: Center(
            child: Image.asset(
          iconPath ?? AppImages.lock,
          width: iconWidth?.w ?? 65.w,
          height: iconHeight?.h ?? 77.h,
        )),
      ),
    );
  }
}
