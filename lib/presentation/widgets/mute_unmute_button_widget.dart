import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/volum_control/volume_control_bloc.dart';
import 'package:netflix_app/core/enum.dart';

class MuteUnmuteButtonWidget extends StatelessWidget {
  const MuteUnmuteButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VolumeControlBloc, VolumeControlState>(
      builder: (context, state) {
        return CircleAvatar(
          backgroundColor: Colors.black.withOpacity(0.05),
          child: IconButton(
              onPressed: () {
                
                if (state.volumeControl == VolumeControl.mute) {
                  context.read<VolumeControlBloc>().add(Unmute());
                } else {
                  context.read<VolumeControlBloc>().add(Mute());
                }
              },
              icon: state.volumeControl == VolumeControl.mute
                  ? Icon(
                      Icons.volume_up,
                      size: 25,
                    )
                  : Icon(Icons.volume_off)),
        );
      },
    );
  }
}