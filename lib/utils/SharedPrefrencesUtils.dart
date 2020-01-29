import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesUtils {
  static SharedPreferences prefs;

//  SharedPrefrencesUtils() {
//    _init();
//  }

  static  _init() async {
    if(prefs == null)
        prefs =  await SharedPreferences.getInstance();

//    return prefs;
  }

  static setData(String key, String value) async {
    await _init() ;
    // set Value
     prefs.setString(key, value);
  }

  static String getData(String key) {
    _init();
    // Try reading data from  key. If it doesn't exist, return null.
    return prefs.getString(key) ?? "";
  }

  static removeData(String key) {
    _init();
    prefs.remove(key);
  }
}
