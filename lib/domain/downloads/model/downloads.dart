import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class MDownloads with _$MDownloads {
  const factory MDownloads({
    @JsonKey(name: "poster_path") required String? posterPatch,
    @JsonKey(name: "title") required String? title,
  }) = _MDownloads;

  factory MDownloads.fromJson(Map<String, dynamic> json) =>
      _$MDownloadsFromJson(json);
}
