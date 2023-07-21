import 'package:flutter/material.dart';

class AppLanguage {
  final Locale locale;
  final String code;
  const AppLanguage({required this.locale, required this.code});
}

class SupportedLanguages {
  SupportedLanguages._();

  static List<AppLanguage> get supportedLanguages => const [
        AppLanguage(locale: Locale('ar'), code: 'ar_SA'),
        AppLanguage(locale: Locale('en'), code: 'ar_US'),
      ];

  static List<Locale> get supportedLocales => supportedLanguages.map((e) => e.locale).toList();
}
