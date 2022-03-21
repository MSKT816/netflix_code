part of 'volume_control_bloc.dart';

@freezed
class VolumeControlEvent with _$VolumeControlEvent {
  const factory VolumeControlEvent.mute() = Mute;
  const factory VolumeControlEvent.unmute() = Unmute;
}
