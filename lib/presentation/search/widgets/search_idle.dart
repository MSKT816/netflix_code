import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_page_title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    String imageUrl =
        'https://www.themoviedb.org/t/p/w250_and_h141_face/8pgKccb5PfE1kWB9qqiXJem83VC.jpg';
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchPagetTitle(
            title: 'Top Searches',
          ),
          kheight,
          Expanded(
            child: ListView.separated(
              itemBuilder: (ctx, index) => _SearchTile(
                size: _size,
                imageUrl: imageUrl,
                index: index + 1,
              ),
              separatorBuilder: (ctx, index) => kheight,
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchTile extends StatelessWidget {
  const _SearchTile({
    Key? key,
    required Size size,
    required this.imageUrl,
    this.index = 0,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final String imageUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: _size.width * .35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        kwidth,
        Expanded(
            child: Text(
          'Movie $index',
          style: const TextStyle(fontSize: 18),
        )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.play_circle,
              color: whiteColor,
              size: 35,
            )),
      ],
    );
  }
}
