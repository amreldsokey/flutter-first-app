import 'package:flutter_app_first/utils/SharedPrefrencesUtils.dart';

class UserDataManger {
//  static SharedPrefrencesUtils msharedPrefrencesUtils =
//      new SharedPrefrencesUtils();

//  static void _init(){
//    if(msharedPrefrencesUtils == null)
//      msharedPrefrencesUtils =
//      new SharedPrefrencesUtils();
//  }



  static setUserName(String name) {
//    _init();
    SharedPrefrencesUtils.setData("UserName", name);
  }

  static String getUserName() {
//    _init();
    return SharedPrefrencesUtils.getData("UserName");
  }
}
