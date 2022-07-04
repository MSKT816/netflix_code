import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/domain/serach/model/search_model/search_response/result.dart';
import 'package:netflix_app/presentation/movie%20details%20page/movie_detail_page.dart';
import 'package:netflix_app/presentation/search/widgets/search_page_title.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key, required this.searhResultList})
      : super(key: key);
  final List<SearchResultData> searhResultList;
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
              children: List.generate(
                searhResultList.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      log("$kImageBaseUrlr${searhResultList[index].backdropPath}");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => MovieDetailsPage(
                                searchResultData: searhResultList[index],
                              )));
                    },
                    child: MainCard(
                      imageUrl:
                          "$kImageBaseUrlr${searhResultList[index].posterPath}",
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover)));
  }
}
