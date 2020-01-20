import 'package:flutter_app_first/model/data/movies/MoviesResponse.dart';
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_first/resource/AppStrings.dart';
import 'package:http/http.dart' as http;


class CallingApi
{

  Future<MoviesResponse> fetchMovies() async {
    final response =
    await http.get('https://api.themoviedb.org/3/movie/now_playing?api_key='+AppStrings.api_key);

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
}