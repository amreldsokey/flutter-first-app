import 'package:flutter/material.dart';
import 'package:flutter_app_first/model/DataManger/UserDataManger.dart';

import 'package:flutter_app_first/resource/AppColor.dart';
import 'package:flutter_app_first/resource/AppTheme.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme1,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Movies app"),
          ),
          body: Container(
              color: AppColor.ErroColor,
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child:
//                Text("Loading ...",
//                  textAlign: TextAlign.center,)
                    Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: AppColor.BlackColor,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Loading ...",
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ))),
    );
  }

  @override
  void initState() {
    super.initState();
    UserDataManger.setUserName("Amr eldsoky");
    new Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/loginsignup'));
  }
}
