import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class ButtonWithLabelWidget extends StatelessWidget {
  const ButtonWithLabelWidget({
    Key? key,
    required this.icon,
    this.name = '',
    this.iconSize = 25,
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
  }) : super(key: key);
  final IconData icon;
  final String name;
  final double iconSize;

  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: whiteColor,
        ),
        Text(
          name,
          style: textStyle,
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
