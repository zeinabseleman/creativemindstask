import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? sharedPrefs;

  Future<void> init() async {
    sharedPrefs = await SharedPreferences.getInstance();
  }

  String getToken() {
    return sharedPrefs!.getString(keyToken) ?? '';
  }

  setToken(String value) {
    sharedPrefs!.setString(keyToken, value);
  }

  void removeToken() {
    sharedPrefs!.remove(keyToken);
  }

  String getLanguage() {
    return sharedPrefs!.getString(languageCode) ?? 'ar';
  }

  String getOldLanguage() {
    return sharedPrefs!.getString(oldlanguageCode) ?? 'ar';
  }

  setLanguage(String value) {
    sharedPrefs!.setString(languageCode, value);
  }
}

///// Object
final sharedPrefs = SharedPrefs();
///// Keys
const String keyToken = "key_token";
const String languageCode = 'languageCode';
const String oldlanguageCode = 'oldlanguageCode';
