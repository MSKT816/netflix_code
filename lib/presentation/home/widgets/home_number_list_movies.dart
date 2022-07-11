import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/number_movie_tile.dart';
import 'package:netflix_app/presentation/home/widgets/tile_title.dart';

import 'home_movie_tile.dart';

class HomeNumberListMovies extends StatelessWidget {
  const HomeNumberListMovies({Key? key, required this.imageList}) : super(key: key);
  final List<String> imageList ;
  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TileTitle(title: 'Top 10 TV Shows in India'),
        kheight,
        SizedBox(
          height: 140,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) =>
                NumberMovieTile(imgUrl: imageList[index], index: index),
            separatorBuilder: (ctx, index) => kwidth,
            itemCount: imageList.length,
          ),
        ),
        kheight,
      ],
    );
  }
}
