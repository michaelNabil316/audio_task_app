import 'dart:developer';
import 'package:cet_e_services/shared/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../config/themes/app_themes.dart';
import '../../core/shared_pref.dart';
import '../../core/translation/controller.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool langSwitcher = false;
  bool darkSwitcher = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: cupertino.Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: "Setting".tr, isBold: true),
          SizedBox(height: 10.h),
          const Divider(),
          SizedBox(height: 5.h),
          ListTile(
            title: Text(preferences.get("isDark") == true
                ? "Dark Mode".tr
                : "Light Mode".tr),
            trailing: cupertino.CupertinoSwitch(
                value: darkSwitcher,
                onChanged: (value) {
                  changeThemeMode(value);
                  setState(() {
                    log("value : $value");
                    darkSwitcher = value;
                  });
                  preferences.setBool("isDark", value);
                }),
          ),
          SizedBox(height: 5.h),
          const Divider(),
          SizedBox(height: 5.h),
          GetBuilder(
              init: AppLanguage(),
              builder: (AppLanguage controller) {
                return ListTile(
                  title: Text("language".tr),
                  trailing: cupertino.CupertinoSwitch(
                      value: langSwitcher,
                      onChanged: (value) {
                        log("language value $value");
                        controller.changeLanguage('en'.tr);
                        Get.updateLocale(Locale('en'.tr));
                        // final arabicLocale =
                        //     SupportedLanguages.supportedLocales.first;
                        // final englishLocale = SupportedLanguages.supportedLocales[1];
                        // context
                        //     .setLocale(value == true ? arabicLocale : englishLocale);
                        setState(() {
                          langSwitcher = value;
                        });
                      }),
                );
              }),
        ],
      ),
    ));
  }
}
