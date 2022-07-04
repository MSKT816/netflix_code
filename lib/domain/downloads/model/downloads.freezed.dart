// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MDownloads _$MDownloadsFromJson(Map<String, dynamic> json) {
  return _MDownloads.fromJson(json);
}

/// @nodoc
class _$MDownloadsTearOff {
  const _$MDownloadsTearOff();

  _MDownloads call(
      {@JsonKey(name: "poster_path") required String? posterPatch,
      @JsonKey(name: "title") required String? title}) {
    return _MDownloads(
      posterPatch: posterPatch,
      title: title,
    );
  }

  MDownloads fromJson(Map<String, Object?> json) {
    return MDownloads.fromJson(json);
  }
}

/// @nodoc
const $MDownloads = _$MDownloadsTearOff();

/// @nodoc
mixin _$MDownloads {
  @JsonKey(name: "poster_path")
  String? get posterPatch => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MDownloadsCopyWith<MDownloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MDownloadsCopyWith<$Res> {
  factory $MDownloadsCopyWith(
          MDownloads value, $Res Function(MDownloads) then) =
      _$MDownloadsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPatch,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$MDownloadsCopyWithImpl<$Res> implements $MDownloadsCopyWith<$Res> {
  _$MDownloadsCopyWithImpl(this._value, this._then);

  final MDownloads _value;
  // ignore: unused_field
  final $Res Function(MDownloads) _then;

  @override
  $Res call({
    Object? posterPatch = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      posterPatch: posterPatch == freezed
          ? _value.posterPatch
          : posterPatch // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MDownloadsCopyWith<$Res> implements $MDownloadsCopyWith<$Res> {
  factory _$MDownloadsCopyWith(
          _MDownloads value, $Res Function(_MDownloads) then) =
      __$MDownloadsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPatch,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class __$MDownloadsCopyWithImpl<$Res> extends _$MDownloadsCopyWithImpl<$Res>
    implements _$MDownloadsCopyWith<$Res> {
  __$MDownloadsCopyWithImpl(
      _MDownloads _value, $Res Function(_MDownloads) _then)
      : super(_value, (v) => _then(v as _MDownloads));

  @override
  _MDownloads get _value => super._value as _MDownloads;

  @override
  $Res call({
    Object? posterPatch = freezed,
    Object? title = freezed,
  }) {
    return _then(_MDownloads(
      posterPatch: posterPatch == freezed
          ? _value.posterPatch
          : posterPatch // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MDownloads implements _MDownloads {
  const _$_MDownloads(
      {@JsonKey(name: "poster_path") required this.posterPatch,
      @JsonKey(name: "title") required this.title});

  factory _$_MDownloads.fromJson(Map<String, dynamic> json) =>
      _$$_MDownloadsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPatch;
  @override
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'MDownloads(posterPatch: $posterPatch, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MDownloads &&
            const DeepCollectionEquality()
                .equals(other.posterPatch, posterPatch) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posterPatch),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$MDownloadsCopyWith<_MDownloads> get copyWith =>
      __$MDownloadsCopyWithImpl<_MDownloads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MDownloadsToJson(this);
  }
}

abstract class _MDownloads implements MDownloads {
  const factory _MDownloads(
      {@JsonKey(name: "poster_path") required String? posterPatch,
      @JsonKey(name: "title") required String? title}) = _$_MDownloads;

  factory _MDownloads.fromJson(Map<String, dynamic> json) =
      _$_MDownloads.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPatch;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$MDownloadsCopyWith<_MDownloads> get copyWith =>
      throw _privateConstructorUsedError;
}
