import 'dart:developer';
import 'package:cet_e_services/shared/widgets/custom_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_languages.dart';

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
          CustomText(text: "Setting", isBold: true),
          SizedBox(height: 10.h),
          const Divider(),
          SizedBox(height: 5.h),
          ListTile(
            title: Text("Dark Mode"),
            trailing: cupertino.CupertinoSwitch(
                value: darkSwitcher,
                onChanged: (value) {
                  setState(() {
                    log("value : $value");
                    darkSwitcher = value;
                  });
                }),
          ),
          SizedBox(height: 5.h),
          const Divider(),
          SizedBox(height: 5.h),
          ListTile(
            title: Text("Arabic Language"),
            trailing: cupertino.CupertinoSwitch(
                value: langSwitcher,
                onChanged: (value) {
                  setState(() {
                    langSwitcher = value;
                  });
                  final arabicLocale =
                      SupportedLanguages.supportedLocales.first;
                  final englishLocale =
                      SupportedLanguages.supportedLocales.last;
                  context
                      .setLocale(value == true ? arabicLocale : englishLocale);
                }),
          ),
        ],
      ),
    ));
  }
}
