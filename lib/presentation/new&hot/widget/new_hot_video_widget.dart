import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/presentation/widgets/mute_unmute_button_widget.dart';

class NewAndHotVideoWidget extends StatelessWidget {
  const NewAndHotVideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          color: whiteColor,
          child: const Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/wvdWb5kTQipdMDqCclC6Y3zr4j3.jpg')),
        ),
        const Positioned(bottom: 0, right: 0, child: MuteUnmuteButtonWidget())
      ],
    );
  }
}
