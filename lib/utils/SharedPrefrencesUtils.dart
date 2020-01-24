import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesUtils {
  SharedPreferences prefs;

  SharedPrefrencesUtils() {
    _init();
  }

  _init() async {
    prefs = await SharedPreferences.getInstance();
  }

  setData(String key, String value) {
    // set Value
    prefs.setString(key, value);
  }

  String getData(String key) {
    // Try reading data from  key. If it doesn't exist, return null.
    return prefs.getString(key) ?? null;
  }

  removeData(String key) {
    prefs.remove(key);
  }
}
