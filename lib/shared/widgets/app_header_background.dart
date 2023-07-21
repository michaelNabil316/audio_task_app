import 'package:cet_e_services/core/utils/app_images.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppHeaderBackground extends StatelessWidget {
  final String? iconPath;
  final String? parentScreenTitle;
  final String? subTitle;
  const AppHeaderBackground(
      {super.key, this.iconPath, this.parentScreenTitle, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 267.h,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              context.locale.languageCode == 'en'
                  ? AppImages.topHeaderImageBgMirror
                  : AppImages.topHeaderImageBg,
              // AppImages.topHeaderImageBg
            ),
            fit: BoxFit.fill),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 28.h,
        ),
        Row(
          children: [
            const BackButton(
              color: Colors.white,
            ),
            Text(
              parentScreenTitle ?? '',
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            'hello'.tr(),
            style: TextStyle(color: Colors.white, fontSize: 30.sp),
          ),
        ),
        if (subTitle != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              subTitle ?? '',
              style: TextStyle(color: Colors.white, fontSize: 22.sp),
            ),
          ),
        // Container(
        //   // alignment: Alignment.bottomLeft,
        //   transform: Matrix4.translationValues(10, -30, 1),
        //   child: Row(
        //     children: [
        //       const Spacer(),
        //       Container(
        //         width: 130.w,
        //         height: 130.w,
        //         decoration: BoxDecoration(
        //           color: AppColors.primaryColor,
        //           shape: BoxShape.circle,
        //           boxShadow: [
        //             BoxShadow(
        //               color: Colors.red.withOpacity(0.35),
        //               spreadRadius: 20,
        //               blurRadius: 40,
        //               offset: Offset(0, 20),
        //             ),
        //           ],
        //         ),
        //         child: Center(
        //             child: Image.asset(
        //           iconPath ?? AppImages.lock,
        //           width: 43.w,
        //           height: 53.w,
        //         )),
        //       ),
        //       SizedBox(width: 16.w)
        //     ],
        //   ),
        // ),
      ]),
    );
  }
}
