// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comming_soon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommingSoonEventTearOff {
  const _$CommingSoonEventTearOff();

  _GetCommingSoonDetails getCommingSoonDetails() {
    return const _GetCommingSoonDetails();
  }
}

/// @nodoc
const $CommingSoonEvent = _$CommingSoonEventTearOff();

/// @nodoc
mixin _$CommingSoonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCommingSoonDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCommingSoonDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCommingSoonDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCommingSoonDetails value)
        getCommingSoonDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCommingSoonDetails value)? getCommingSoonDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCommingSoonDetails value)? getCommingSoonDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommingSoonEventCopyWith<$Res> {
  factory $CommingSoonEventCopyWith(
          CommingSoonEvent value, $Res Function(CommingSoonEvent) then) =
      _$CommingSoonEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommingSoonEventCopyWithImpl<$Res>
    implements $CommingSoonEventCopyWith<$Res> {
  _$CommingSoonEventCopyWithImpl(this._value, this._then);

  final CommingSoonEvent _value;
  // ignore: unused_field
  final $Res Function(CommingSoonEvent) _then;
}

/// @nodoc
abstract class _$GetCommingSoonDetailsCopyWith<$Res> {
  factory _$GetCommingSoonDetailsCopyWith(_GetCommingSoonDetails value,
          $Res Function(_GetCommingSoonDetails) then) =
      __$GetCommingSoonDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCommingSoonDetailsCopyWithImpl<$Res>
    extends _$CommingSoonEventCopyWithImpl<$Res>
    implements _$GetCommingSoonDetailsCopyWith<$Res> {
  __$GetCommingSoonDetailsCopyWithImpl(_GetCommingSoonDetails _value,
      $Res Function(_GetCommingSoonDetails) _then)
      : super(_value, (v) => _then(v as _GetCommingSoonDetails));

  @override
  _GetCommingSoonDetails get _value => super._value as _GetCommingSoonDetails;
}

/// @nodoc

class _$_GetCommingSoonDetails implements _GetCommingSoonDetails {
  const _$_GetCommingSoonDetails();

  @override
  String toString() {
    return 'CommingSoonEvent.getCommingSoonDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetCommingSoonDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCommingSoonDetails,
  }) {
    return getCommingSoonDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCommingSoonDetails,
  }) {
    return getCommingSoonDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCommingSoonDetails,
    required TResult orElse(),
  }) {
    if (getCommingSoonDetails != null) {
      return getCommingSoonDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCommingSoonDetails value)
        getCommingSoonDetails,
  }) {
    return getCommingSoonDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCommingSoonDetails value)? getCommingSoonDetails,
  }) {
    return getCommingSoonDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCommingSoonDetails value)? getCommingSoonDetails,
    required TResult orElse(),
  }) {
    if (getCommingSoonDetails != null) {
      return getCommingSoonDetails(this);
    }
    return orElse();
  }
}

abstract class _GetCommingSoonDetails implements CommingSoonEvent {
  const factory _GetCommingSoonDetails() = _$_GetCommingSoonDetails;
}

/// @nodoc
class _$CommingSoonStateTearOff {
  const _$CommingSoonStateTearOff();

  _CommingSoonState call(
      {required bool isLoading,
      required bool isError,
      required List<CommingSoon> commingSoonDetailsList,
      required Option<Either<MainFailure, List<CommingSoon>>>
          commingSoonDetailsOption}) {
    return _CommingSoonState(
      isLoading: isLoading,
      isError: isError,
      commingSoonDetailsList: commingSoonDetailsList,
      commingSoonDetailsOption: commingSoonDetailsOption,
    );
  }
}

/// @nodoc
const $CommingSoonState = _$CommingSoonStateTearOff();

/// @nodoc
mixin _$CommingSoonState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<CommingSoon> get commingSoonDetailsList =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<CommingSoon>>> get commingSoonDetailsOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommingSoonStateCopyWith<CommingSoonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommingSoonStateCopyWith<$Res> {
  factory $CommingSoonStateCopyWith(
          CommingSoonState value, $Res Function(CommingSoonState) then) =
      _$CommingSoonStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isError,
      List<CommingSoon> commingSoonDetailsList,
      Option<Either<MainFailure, List<CommingSoon>>> commingSoonDetailsOption});
}

/// @nodoc
class _$CommingSoonStateCopyWithImpl<$Res>
    implements $CommingSoonStateCopyWith<$Res> {
  _$CommingSoonStateCopyWithImpl(this._value, this._then);

  final CommingSoonState _value;
  // ignore: unused_field
  final $Res Function(CommingSoonState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? commingSoonDetailsList = freezed,
    Object? commingSoonDetailsOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      commingSoonDetailsList: commingSoonDetailsList == freezed
          ? _value.commingSoonDetailsList
          : commingSoonDetailsList // ignore: cast_nullable_to_non_nullable
              as List<CommingSoon>,
      commingSoonDetailsOption: commingSoonDetailsOption == freezed
          ? _value.commingSoonDetailsOption
          : commingSoonDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<CommingSoon>>>,
    ));
  }
}

/// @nodoc
abstract class _$CommingSoonStateCopyWith<$Res>
    implements $CommingSoonStateCopyWith<$Res> {
  factory _$CommingSoonStateCopyWith(
          _CommingSoonState value, $Res Function(_CommingSoonState) then) =
      __$CommingSoonStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isError,
      List<CommingSoon> commingSoonDetailsList,
      Option<Either<MainFailure, List<CommingSoon>>> commingSoonDetailsOption});
}

/// @nodoc
class __$CommingSoonStateCopyWithImpl<$Res>
    extends _$CommingSoonStateCopyWithImpl<$Res>
    implements _$CommingSoonStateCopyWith<$Res> {
  __$CommingSoonStateCopyWithImpl(
      _CommingSoonState _value, $Res Function(_CommingSoonState) _then)
      : super(_value, (v) => _then(v as _CommingSoonState));

  @override
  _CommingSoonState get _value => super._value as _CommingSoonState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? commingSoonDetailsList = freezed,
    Object? commingSoonDetailsOption = freezed,
  }) {
    return _then(_CommingSoonState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      commingSoonDetailsList: commingSoonDetailsList == freezed
          ? _value.commingSoonDetailsList
          : commingSoonDetailsList // ignore: cast_nullable_to_non_nullable
              as List<CommingSoon>,
      commingSoonDetailsOption: commingSoonDetailsOption == freezed
          ? _value.commingSoonDetailsOption
          : commingSoonDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<CommingSoon>>>,
    ));
  }
}

/// @nodoc

class _$_CommingSoonState implements _CommingSoonState {
  const _$_CommingSoonState(
      {required this.isLoading,
      required this.isError,
      required this.commingSoonDetailsList,
      required this.commingSoonDetailsOption});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final List<CommingSoon> commingSoonDetailsList;
  @override
  final Option<Either<MainFailure, List<CommingSoon>>> commingSoonDetailsOption;

  @override
  String toString() {
    return 'CommingSoonState(isLoading: $isLoading, isError: $isError, commingSoonDetailsList: $commingSoonDetailsList, commingSoonDetailsOption: $commingSoonDetailsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommingSoonState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.commingSoonDetailsList, commingSoonDetailsList) &&
            const DeepCollectionEquality().equals(
                other.commingSoonDetailsOption, commingSoonDetailsOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(commingSoonDetailsList),
      const DeepCollectionEquality().hash(commingSoonDetailsOption));

  @JsonKey(ignore: true)
  @override
  _$CommingSoonStateCopyWith<_CommingSoonState> get copyWith =>
      __$CommingSoonStateCopyWithImpl<_CommingSoonState>(this, _$identity);
}

abstract class _CommingSoonState implements CommingSoonState {
  const factory _CommingSoonState(
      {required bool isLoading,
      required bool isError,
      required List<CommingSoon> commingSoonDetailsList,
      required Option<Either<MainFailure, List<CommingSoon>>>
          commingSoonDetailsOption}) = _$_CommingSoonState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<CommingSoon> get commingSoonDetailsList;
  @override
  Option<Either<MainFailure, List<CommingSoon>>> get commingSoonDetailsOption;
  @override
  @JsonKey(ignore: true)
  _$CommingSoonStateCopyWith<_CommingSoonState> get copyWith =>
      throw _privateConstructorUsedError;
}
