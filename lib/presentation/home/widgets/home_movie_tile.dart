import 'package:flutter/material.dart';

class HomePageMovieTile extends StatelessWidget {
  const HomePageMovieTile({Key? key, required this.imgUrl, required this.index})
      : super(key: key);
  final String imgUrl;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 90,
        decoration: BoxDecoration(
            color: Colors.accents[index],
            image: DecorationImage(
                image: NetworkImage(imgUrl), fit: BoxFit.cover)),
      ),
    );
  }
}
