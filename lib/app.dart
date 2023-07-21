import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cet_e_services/config/routes/app_routes.dart';
import 'package:cet_e_services/config/themes/app_themes.dart';
import 'package:cet_e_services/core/utils/app_strings.dart';
import 'package:get/get.dart';
import 'core/translation/translation.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          translations: Translation(),
          locale: const Locale('ar'),
          fallbackLocale: const Locale('ar'),
          title: AppStrings.appTitle,
          theme: appTheme(),
          //  localizationsDelegates: context.localizationDelegates,
          //  supportedLocales: context.supportedLocales,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoute.onGenerateRoute,
        );
      },
      // child: QuoteScreen(),
    );
  }
}
