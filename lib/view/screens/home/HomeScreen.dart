import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_first/resource/AppColor.dart';
import 'package:flutter_app_first/resource/AppTheme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme1,
      home: Scaffold(
          appBar: AppBar(
            lo
            title: Text("Home Screen"),
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
}
