import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_app/core/enum.dart';

part 'volume_control_event.dart';
part 'volume_control_state.dart';
part 'volume_control_bloc.freezed.dart';

class VolumeControlBloc extends Bloc<VolumeControlEvent, VolumeControlState> {
  VolumeControlBloc() : super(VolumeControlState.initial()) {
    on<Mute>((event, emit) {
      return emit(state.copyWith(volumeControl: VolumeControl.mute));
    });
    on<Unmute>((event, emit) {
      return emit(state.copyWith(volumeControl: VolumeControl.unmute));
    });
  }
}
