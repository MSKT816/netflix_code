import 'package:json_annotation/json_annotation.dart';


part 'evey_ones_watching.g.dart';

@JsonSerializable()
class HotAndNewResponse {
  int? page;
  List<HotAndNEwData> results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  HotAndNewResponse({
    this.page,
    this.results=const [],
    this.totalPages,
    this.totalResults,
  });

  factory HotAndNewResponse.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewResponseToJson(this);
}



@JsonSerializable()
class HotAndNEwData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;
  
  HotAndNEwData({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory HotAndNEwData.fromJson(Map<String, dynamic> json) {
    return _$HotAndNEwDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNEwDataToJson(this);
}

