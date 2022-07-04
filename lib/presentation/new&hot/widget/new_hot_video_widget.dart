import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/presentation/widgets/mute_unmute_button_widget.dart';

class NewAndHotVideoWidget extends StatelessWidget {
  const NewAndHotVideoWidget({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          color: whiteColor,
          child: Image(fit: BoxFit.cover, image: NetworkImage(imgUrl)),
        ),
        const Positioned(bottom: 0, right: 0, child: MuteUnmuteButtonWidget())
      ],
    );
  }
}
