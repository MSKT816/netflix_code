import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

import 'package:netflix_app/presentation/home/widgets/home_movie_tile.dart';

import 'tile_title.dart';

class HomePageMovieListWidget extends StatelessWidget {
  const HomePageMovieListWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TileTitle(title: title),
        kheight,
        SizedBox(
          height: 140,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) =>
                HomePageMovieTile(imgUrl: "", index: index),
            separatorBuilder: (ctx, index) => kwidth,
            itemCount: 0,
          ),
        ),
        kheight,
      ],
    );
  }
}
