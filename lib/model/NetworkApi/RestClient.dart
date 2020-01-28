import 'dart:async';
import 'dart:convert';
import 'package:flutter_app_first/model/NetworkApi/ApiConfigration.dart';
import 'package:http/http.dart' as http;

class RestClient{



   static Future<http.Response> callGetApi(String endPoint,Map <String,String> mapParam) async {

     String urlWithParamter = ApiConfigration.BASE_URL+endPoint+"?";
     mapParam.forEach((k,v) => urlWithParamter+=k+"="+v+"&");
     print("url = " + urlWithParamter);
      http.Response te = await http.get(urlWithParamter,
       headers: {
         "Accept": "application/json",
         "Content-Type": "application/x-www-form-urlencoded"
       });

     return te;
   }



  static Future<http.Response> callPostApi(String endPoint,
      Map <String,String> mapBody) async {

    return await http.post(ApiConfigration.BASE_URL+endPoint,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
    body: json.encode(mapBody));
  }

}