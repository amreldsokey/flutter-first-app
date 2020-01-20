import 'package:json_annotation/json_annotation.dart';
import 'Dates.dart';
import 'ResultMovies.dart';

@JsonSerializable()
@JsonSerializable(explicitToJson: true)
class MoviesResponse{
  List<ResultMovies> results;
  int page;
  int totalResults;
  Dates dates;
  int totalPages;

  MoviesResponse(
      {this.results,
        this.page,
        this.totalResults,
        this.dates,
        this.totalPages});

  MoviesResponse.fromJson(Map<String, dynamic> json)
  {
//    try{
      if (json['results'] != null) {
        results = new List<ResultMovies>();
        json['results'].forEach((v) {
          results.add(new ResultMovies.fromJson(v));
        });
      }
      page = json['page'];
      totalResults = json['total_results'];
      dates = json['dates'] != null ? new Dates.fromJson(json['dates']) : null;
      totalPages = json['total_pages'];
//    }catch(error){
//      print("error in MoviesResponse.fromJson" + error);
//    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    data['page'] = this.page;
    data['total_results'] = this.totalResults;
    if (this.dates != null) {
      data['dates'] = this.dates.toJson();
    }
    data['total_pages'] = this.totalPages;
    return data;
  }
}