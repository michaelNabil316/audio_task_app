import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'get_lang_storage.dart';

class AppLanguage extends GetxController {
  var appLocale = 'en';

  @override
  void onInit() async {
    super.onInit();

    LocalStorage localStorage = LocalStorage();

    appLocale = await localStorage.languageSelected;
    Get.updateLocale(Locale(appLocale));
    update();
  }

  void changeLanguage(String type) async {
    LocalStorage localStorage = LocalStorage();

    if (appLocale == type) {
      return;
    }
    if (type == 'ar') {
      appLocale = 'ar';
      localStorage.saveLanguageToDisk('ar');
    } else {
      appLocale = 'en';
      localStorage.saveLanguageToDisk('en');
    }
    update();
  }
}
