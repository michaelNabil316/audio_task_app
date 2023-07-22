import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/View%20model/more_cubit/more_cubit.dart';
import 'package:task/shared/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../View model/more_cubit/more_state.dart';
import '../../config/themes/app_themes.dart';
import '../../core/shared_pref.dart';
import '../../core/translation/controller.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      MoreCubit.get(context).getInitialData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoreCubit, MoreState>(builder: (context, state) {
      MoreCubit moreCubit = MoreCubit.get(context);
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
                  value: moreCubit.darkSwitcher,
                  onChanged: (value) {
                    changeThemeMode(value);
                    moreCubit.changeModeState(value);
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
                    value: moreCubit.langSwitcher,
                    onChanged: (value) {
                      controller.changeLanguage('en'.tr);
                      Get.updateLocale(Locale('en'.tr));
                      moreCubit.changeLangState(value);
                      preferences.setBool("isArbic", value);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ));
    });
  }
}
