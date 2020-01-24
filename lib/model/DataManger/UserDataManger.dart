import 'package:flutter_app_first/utils/SharedPrefrencesUtils.dart';

class UserDataManger {
  static SharedPrefrencesUtils msharedPrefrencesUtils =
      new SharedPrefrencesUtils();

  static setUserName(String name) {
    msharedPrefrencesUtils.setData("UserName", name);
  }

  static String getUserName() {
    return msharedPrefrencesUtils.getData("UserName");
  }
}
