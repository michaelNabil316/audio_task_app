import '../shared_pref.dart';

class LocalStorage {
  void saveLanguageToDisk(String language) async {
    await preferences.setString("language", language);
  }

  Future<String> get languageSelected async {
    return preferences.getString("language") ?? 'ar';
  }
}
