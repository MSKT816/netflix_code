import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_page_title.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchPagetTitle(title: 'Movies & TV'),
          kheight,
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.35,
              children: List.generate(20, (index) {
                return const MainCard();
              }),
            ),
          )
        ],
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vHla3Ej2m53rNmvmYkzvennLrKn.jpg';
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover)));
  }
}
