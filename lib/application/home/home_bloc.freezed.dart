// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  GetHomeScreenData getHomeScreenData() {
    return const GetHomeScreenData();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $GetHomeScreenDataCopyWith<$Res> {
  factory $GetHomeScreenDataCopyWith(
          GetHomeScreenData value, $Res Function(GetHomeScreenData) then) =
      _$GetHomeScreenDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetHomeScreenDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $GetHomeScreenDataCopyWith<$Res> {
  _$GetHomeScreenDataCopyWithImpl(
      GetHomeScreenData _value, $Res Function(GetHomeScreenData) _then)
      : super(_value, (v) => _then(v as GetHomeScreenData));

  @override
  GetHomeScreenData get _value => super._value as GetHomeScreenData;
}

/// @nodoc

class _$GetHomeScreenData implements GetHomeScreenData {
  const _$GetHomeScreenData();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetHomeScreenData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class GetHomeScreenData implements HomeEvent {
  const factory GetHomeScreenData() = _$GetHomeScreenData;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial call(
      {required String stateID,
      required List<HotAndNEwData> pastYearMovieList,
      required List<HotAndNEwData> trendingMovieList,
      required List<HotAndNEwData> tensDramaMovieList,
      required List<HotAndNEwData> southIndianMovieList,
      required List<HotAndNEwData> trendingTVList,
      required bool isLoading,
      required bool hasError}) {
    return _Initial(
      stateID: stateID,
      pastYearMovieList: pastYearMovieList,
      trendingMovieList: trendingMovieList,
      tensDramaMovieList: tensDramaMovieList,
      southIndianMovieList: southIndianMovieList,
      trendingTVList: trendingTVList,
      isLoading: isLoading,
      hasError: hasError,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  String get stateID => throw _privateConstructorUsedError;
  List<HotAndNEwData> get pastYearMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNEwData> get trendingMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNEwData> get tensDramaMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNEwData> get southIndianMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNEwData> get trendingTVList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String stateID,
      List<HotAndNEwData> pastYearMovieList,
      List<HotAndNEwData> trendingMovieList,
      List<HotAndNEwData> tensDramaMovieList,
      List<HotAndNEwData> southIndianMovieList,
      List<HotAndNEwData> trendingTVList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? stateID = freezed,
    Object? pastYearMovieList = freezed,
    Object? trendingMovieList = freezed,
    Object? tensDramaMovieList = freezed,
    Object? southIndianMovieList = freezed,
    Object? trendingTVList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      stateID: stateID == freezed
          ? _value.stateID
          : stateID // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: pastYearMovieList == freezed
          ? _value.pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      trendingMovieList: trendingMovieList == freezed
          ? _value.trendingMovieList
          : trendingMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      tensDramaMovieList: tensDramaMovieList == freezed
          ? _value.tensDramaMovieList
          : tensDramaMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      southIndianMovieList: southIndianMovieList == freezed
          ? _value.southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      trendingTVList: trendingTVList == freezed
          ? _value.trendingTVList
          : trendingTVList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stateID,
      List<HotAndNEwData> pastYearMovieList,
      List<HotAndNEwData> trendingMovieList,
      List<HotAndNEwData> tensDramaMovieList,
      List<HotAndNEwData> southIndianMovieList,
      List<HotAndNEwData> trendingTVList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? stateID = freezed,
    Object? pastYearMovieList = freezed,
    Object? trendingMovieList = freezed,
    Object? tensDramaMovieList = freezed,
    Object? southIndianMovieList = freezed,
    Object? trendingTVList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_Initial(
      stateID: stateID == freezed
          ? _value.stateID
          : stateID // ignore: cast_nullable_to_non_nullable
              as String,
      pastYearMovieList: pastYearMovieList == freezed
          ? _value.pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      trendingMovieList: trendingMovieList == freezed
          ? _value.trendingMovieList
          : trendingMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      tensDramaMovieList: tensDramaMovieList == freezed
          ? _value.tensDramaMovieList
          : tensDramaMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      southIndianMovieList: southIndianMovieList == freezed
          ? _value.southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      trendingTVList: trendingTVList == freezed
          ? _value.trendingTVList
          : trendingTVList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNEwData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.stateID,
      required this.pastYearMovieList,
      required this.trendingMovieList,
      required this.tensDramaMovieList,
      required this.southIndianMovieList,
      required this.trendingTVList,
      required this.isLoading,
      required this.hasError});

  @override
  final String stateID;
  @override
  final List<HotAndNEwData> pastYearMovieList;
  @override
  final List<HotAndNEwData> trendingMovieList;
  @override
  final List<HotAndNEwData> tensDramaMovieList;
  @override
  final List<HotAndNEwData> southIndianMovieList;
  @override
  final List<HotAndNEwData> trendingTVList;
  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(stateID: $stateID, pastYearMovieList: $pastYearMovieList, trendingMovieList: $trendingMovieList, tensDramaMovieList: $tensDramaMovieList, southIndianMovieList: $southIndianMovieList, trendingTVList: $trendingTVList, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.stateID, stateID) &&
            const DeepCollectionEquality()
                .equals(other.pastYearMovieList, pastYearMovieList) &&
            const DeepCollectionEquality()
                .equals(other.trendingMovieList, trendingMovieList) &&
            const DeepCollectionEquality()
                .equals(other.tensDramaMovieList, tensDramaMovieList) &&
            const DeepCollectionEquality()
                .equals(other.southIndianMovieList, southIndianMovieList) &&
            const DeepCollectionEquality()
                .equals(other.trendingTVList, trendingTVList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateID),
      const DeepCollectionEquality().hash(pastYearMovieList),
      const DeepCollectionEquality().hash(trendingMovieList),
      const DeepCollectionEquality().hash(tensDramaMovieList),
      const DeepCollectionEquality().hash(southIndianMovieList),
      const DeepCollectionEquality().hash(trendingTVList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required String stateID,
      required List<HotAndNEwData> pastYearMovieList,
      required List<HotAndNEwData> trendingMovieList,
      required List<HotAndNEwData> tensDramaMovieList,
      required List<HotAndNEwData> southIndianMovieList,
      required List<HotAndNEwData> trendingTVList,
      required bool isLoading,
      required bool hasError}) = _$_Initial;

  @override
  String get stateID;
  @override
  List<HotAndNEwData> get pastYearMovieList;
  @override
  List<HotAndNEwData> get trendingMovieList;
  @override
  List<HotAndNEwData> get tensDramaMovieList;
  @override
  List<HotAndNEwData> get southIndianMovieList;
  @override
  List<HotAndNEwData> get trendingTVList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
