import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          title,
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              )),
          kwidth,
          Container(
            height: 25,
            width: 25,
            color: Colors.blue,
          ),
          kwidth,
        ],
      ),
    );
  }
}
