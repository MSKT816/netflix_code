import 'package:freezed_annotation/freezed_annotation.dart';
part 'comming_soon.freezed.dart';
part 'comming_soon.g.dart';

@freezed
class CommingSoon with _$CommingSoon {
  const factory CommingSoon({
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "poster_path") required String? posterPatch,
    @JsonKey(name: "overview") required String? overView,
    @JsonKey(name: "original_title") required String? title,
    @JsonKey(name: "release_date") required String? releaseDate,
  }) = _CommingSoon;

  factory CommingSoon.fromJson(Map<String, dynamic> json) =>
      _$CommingSoonFromJson(json);
}
