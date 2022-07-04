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
    this.iconColor = Colors.white,
  }) : super(key: key);
  final IconData icon;
  final String name;
  final double iconSize;
  final Color iconColor;

  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: iconColor,
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
