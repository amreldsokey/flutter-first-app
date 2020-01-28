import 'package:flutter_app_first/model/data/movies/MoviesResponse.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'ApiConfigration.dart';
import 'RestClient.dart';


class CallingApi
{

  Future<MoviesResponse> fetchMovies() async {
    final http.Response response =
    await http.get('https://api.themoviedb.org/3/movie/now_playing?api_key='+ApiConfigration.api_key);

//    try{
      if (response.statusCode == 200) {
        // If the call to the server was successful, parse the JSON.
        return MoviesResponse.fromJson(json.decode(response.body));
      } else {
        // If that call was not successful, throw an error.
//      throw Exception('Failed to load post');
        print('Failed to load post');
      }
//    }
//    catch(error){
//      print('error in fetchMovies $error');
//    }

  }


  Future<MoviesResponse> getMovies() async {
    Map<String,String> paramMap = new Map();
    paramMap["api_key"]= ApiConfigration.api_key;
    http.Response response = await RestClient.
    callGetApi(ApiConfigration.API_NOW_PLAYING,paramMap)  ;

    //    try{
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      return  MoviesResponse.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
//      throw Exception('Failed to load post');
      print('Failed to load post');
    }
//    }
//    catch(error){
//      print('error in fetchMovies $error');
//    }

  }
}