import 'package:shared_preferences/shared_preferences.dart';

// =================== Init preferences ===================
late SharedPreferences preferences;
Future<void> initPref() async {
  preferences = await SharedPreferences.getInstance();
}

// ==================== Save Prefrences ===================
Future<bool> saveUserToken(String token) =>
    preferences!.setString('token', token);
Future<bool> saveExpireDate(String token) =>
    preferences!.setString('expireDate', token);

// ==================== Get Prefrences ===================
String? getUser() => preferences!.getString('loggedInBefore');
String? getIsFirstSeen() => preferences!.getString('isFirstSeen');
String? getUserToken() => preferences!.getString('token');
String? getExpireDate() => preferences!.getString('expireDate');
// ==================== prefrences functionality ==========
bool isTokenExpire() {
  if (getExpireDate() != null) {
    DateTime expireDate = DateTime.parse(getExpireDate()!);
    DateTime now = DateTime.now();
    if (now.isBefore(expireDate)) {
      return false;
    }
  }
  return true;
}
