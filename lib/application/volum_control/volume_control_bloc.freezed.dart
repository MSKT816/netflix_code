// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'volume_control_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VolumeControlEventTearOff {
  const _$VolumeControlEventTearOff();

  Mute mute() {
    return const Mute();
  }

  Unmute unmute() {
    return const Unmute();
  }
}

/// @nodoc
const $VolumeControlEvent = _$VolumeControlEventTearOff();

/// @nodoc
mixin _$VolumeControlEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mute,
    required TResult Function() unmute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mute,
    TResult Function()? unmute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mute,
    TResult Function()? unmute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Mute value) mute,
    required TResult Function(Unmute value) unmute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Mute value)? mute,
    TResult Function(Unmute value)? unmute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Mute value)? mute,
    TResult Function(Unmute value)? unmute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeControlEventCopyWith<$Res> {
  factory $VolumeControlEventCopyWith(
          VolumeControlEvent value, $Res Function(VolumeControlEvent) then) =
      _$VolumeControlEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VolumeControlEventCopyWithImpl<$Res>
    implements $VolumeControlEventCopyWith<$Res> {
  _$VolumeControlEventCopyWithImpl(this._value, this._then);

  final VolumeControlEvent _value;
  // ignore: unused_field
  final $Res Function(VolumeControlEvent) _then;
}

/// @nodoc
abstract class $MuteCopyWith<$Res> {
  factory $MuteCopyWith(Mute value, $Res Function(Mute) then) =
      _$MuteCopyWithImpl<$Res>;
}

/// @nodoc
class _$MuteCopyWithImpl<$Res> extends _$VolumeControlEventCopyWithImpl<$Res>
    implements $MuteCopyWith<$Res> {
  _$MuteCopyWithImpl(Mute _value, $Res Function(Mute) _then)
      : super(_value, (v) => _then(v as Mute));

  @override
  Mute get _value => super._value as Mute;
}

/// @nodoc

class _$Mute implements Mute {
  const _$Mute();

  @override
  String toString() {
    return 'VolumeControlEvent.mute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Mute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mute,
    required TResult Function() unmute,
  }) {
    return mute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mute,
    TResult Function()? unmute,
  }) {
    return mute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mute,
    TResult Function()? unmute,
    required TResult orElse(),
  }) {
    if (mute != null) {
      return mute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Mute value) mute,
    required TResult Function(Unmute value) unmute,
  }) {
    return mute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Mute value)? mute,
    TResult Function(Unmute value)? unmute,
  }) {
    return mute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Mute value)? mute,
    TResult Function(Unmute value)? unmute,
    required TResult orElse(),
  }) {
    if (mute != null) {
      return mute(this);
    }
    return orElse();
  }
}

abstract class Mute implements VolumeControlEvent {
  const factory Mute() = _$Mute;
}

/// @nodoc
abstract class $UnmuteCopyWith<$Res> {
  factory $UnmuteCopyWith(Unmute value, $Res Function(Unmute) then) =
      _$UnmuteCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnmuteCopyWithImpl<$Res> extends _$VolumeControlEventCopyWithImpl<$Res>
    implements $UnmuteCopyWith<$Res> {
  _$UnmuteCopyWithImpl(Unmute _value, $Res Function(Unmute) _then)
      : super(_value, (v) => _then(v as Unmute));

  @override
  Unmute get _value => super._value as Unmute;
}

/// @nodoc

class _$Unmute implements Unmute {
  const _$Unmute();

  @override
  String toString() {
    return 'VolumeControlEvent.unmute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Unmute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mute,
    required TResult Function() unmute,
  }) {
    return unmute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mute,
    TResult Function()? unmute,
  }) {
    return unmute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mute,
    TResult Function()? unmute,
    required TResult orElse(),
  }) {
    if (unmute != null) {
      return unmute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Mute value) mute,
    required TResult Function(Unmute value) unmute,
  }) {
    return unmute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Mute value)? mute,
    TResult Function(Unmute value)? unmute,
  }) {
    return unmute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Mute value)? mute,
    TResult Function(Unmute value)? unmute,
    required TResult orElse(),
  }) {
    if (unmute != null) {
      return unmute(this);
    }
    return orElse();
  }
}

abstract class Unmute implements VolumeControlEvent {
  const factory Unmute() = _$Unmute;
}

/// @nodoc
class _$VolumeControlStateTearOff {
  const _$VolumeControlStateTearOff();

  _VolumeControlState call({required VolumeControl volumeControl}) {
    return _VolumeControlState(
      volumeControl: volumeControl,
    );
  }
}

/// @nodoc
const $VolumeControlState = _$VolumeControlStateTearOff();

/// @nodoc
mixin _$VolumeControlState {
  VolumeControl get volumeControl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VolumeControlStateCopyWith<VolumeControlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeControlStateCopyWith<$Res> {
  factory $VolumeControlStateCopyWith(
          VolumeControlState value, $Res Function(VolumeControlState) then) =
      _$VolumeControlStateCopyWithImpl<$Res>;
  $Res call({VolumeControl volumeControl});
}

/// @nodoc
class _$VolumeControlStateCopyWithImpl<$Res>
    implements $VolumeControlStateCopyWith<$Res> {
  _$VolumeControlStateCopyWithImpl(this._value, this._then);

  final VolumeControlState _value;
  // ignore: unused_field
  final $Res Function(VolumeControlState) _then;

  @override
  $Res call({
    Object? volumeControl = freezed,
  }) {
    return _then(_value.copyWith(
      volumeControl: volumeControl == freezed
          ? _value.volumeControl
          : volumeControl // ignore: cast_nullable_to_non_nullable
              as VolumeControl,
    ));
  }
}

/// @nodoc
abstract class _$VolumeControlStateCopyWith<$Res>
    implements $VolumeControlStateCopyWith<$Res> {
  factory _$VolumeControlStateCopyWith(
          _VolumeControlState value, $Res Function(_VolumeControlState) then) =
      __$VolumeControlStateCopyWithImpl<$Res>;
  @override
  $Res call({VolumeControl volumeControl});
}

/// @nodoc
class __$VolumeControlStateCopyWithImpl<$Res>
    extends _$VolumeControlStateCopyWithImpl<$Res>
    implements _$VolumeControlStateCopyWith<$Res> {
  __$VolumeControlStateCopyWithImpl(
      _VolumeControlState _value, $Res Function(_VolumeControlState) _then)
      : super(_value, (v) => _then(v as _VolumeControlState));

  @override
  _VolumeControlState get _value => super._value as _VolumeControlState;

  @override
  $Res call({
    Object? volumeControl = freezed,
  }) {
    return _then(_VolumeControlState(
      volumeControl: volumeControl == freezed
          ? _value.volumeControl
          : volumeControl // ignore: cast_nullable_to_non_nullable
              as VolumeControl,
    ));
  }
}

/// @nodoc

class _$_VolumeControlState implements _VolumeControlState {
  const _$_VolumeControlState({required this.volumeControl});

  @override
  final VolumeControl volumeControl;

  @override
  String toString() {
    return 'VolumeControlState(volumeControl: $volumeControl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VolumeControlState &&
            const DeepCollectionEquality()
                .equals(other.volumeControl, volumeControl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(volumeControl));

  @JsonKey(ignore: true)
  @override
  _$VolumeControlStateCopyWith<_VolumeControlState> get copyWith =>
      __$VolumeControlStateCopyWithImpl<_VolumeControlState>(this, _$identity);
}

abstract class _VolumeControlState implements VolumeControlState {
  const factory _VolumeControlState({required VolumeControl volumeControl}) =
      _$_VolumeControlState;

  @override
  VolumeControl get volumeControl;
  @override
  @JsonKey(ignore: true)
  _$VolumeControlStateCopyWith<_VolumeControlState> get copyWith =>
      throw _privateConstructorUsedError;
}
