import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cet_e_services/config/routes/app_routes.dart';
import 'package:cet_e_services/config/themes/app_themes.dart';
import 'package:cet_e_services/core/utils/app_strings.dart';

import 'config/app_languages.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: SupportedLanguages.supportedLocales,
      path: 'l10n',
      fallbackLocale: SupportedLanguages.supportedLocales.first,
      useOnlyLangCode: true,
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: AppStrings.appTitle,
            theme: appTheme(),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRoute.onGenerateRoute,
          );
        },
        // child: QuoteScreen(),
      ),
    );
  }
}
