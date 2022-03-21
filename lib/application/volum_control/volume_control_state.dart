part of 'volume_control_bloc.dart';

@freezed
class VolumeControlState with _$VolumeControlState {
  const factory VolumeControlState({
    required VolumeControl volumeControl,
  }) = _VolumeControlState;

  factory VolumeControlState.initial() =>
      VolumeControlState(volumeControl: VolumeControl.unmute);
}
