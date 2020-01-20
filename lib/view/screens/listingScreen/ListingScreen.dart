import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_first/model/data/movies/MoviesResponse.dart';
import 'package:flutter_app_first/model/data/movies/ResultMovies.dart';
import 'package:flutter_app_first/model/service/CallingApi.dart';
import 'package:flutter_app_first/resource/AppColor.dart';
import 'package:flutter_app_first/resource/AppTheme.dart';

class ListingScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ListingScreen> {
  Future<MoviesResponse> moviesResponse;

  @override
  void initState() {
    super.initState();
    moviesResponse = CallingApi().fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme1,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Home Screen"),
          ),
          body: Container(
              color: AppColor.ErroColor,
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child:FutureBuilder<MoviesResponse>(
                  future: moviesResponse,
                  builder: (context,snapshot){
                    if(snapshot.hasData){
                      return ListView(children: _getListData(snapshot.data.results));
                    }else{
                      print("error = ${snapshot.error}");
                      return Text("error in _HomeScreenState= ${snapshot.error}");
                    }
                    // By default, show a loading spinner.
                    return CircularProgressIndicator();
                  },
                ),
              ))),
    );
  }


  _getListData(List<ResultMovies> temp) {
    List<Widget> widgets = [];
    for (int i = 0; i < temp.length; i++) {
      widgets.add(GestureDetector(
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Row ${temp[i].title}")),
        onTap: () {
          print('row tapped of $i');
        },
      ));
    }
    return widgets;
  }


}

