import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/home_movie_tile.dart';

import 'tile_title.dart';

class HomePageMovieListWidget extends StatelessWidget {
  const HomePageMovieListWidget({Key? key, required this.title})
      : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final List imageList = [
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yQgGYiHUoDYeA4TbYlghpA5lmKH.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vHla3Ej2m53rNmvmYkzvennLrKn.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yQgGYiHUoDYeA4TbYlghpA5lmKH.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vHla3Ej2m53rNmvmYkzvennLrKn.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yQgGYiHUoDYeA4TbYlghpA5lmKH.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vHla3Ej2m53rNmvmYkzvennLrKn.jpg',
    ];
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
                HomePageMovieTile(imgUrl: imageList[index], index: index),
            separatorBuilder: (ctx, index) => kwidth,
            itemCount: imageList.length,
          ),
        ),
        kheight,
      ],
    );
  }
}


