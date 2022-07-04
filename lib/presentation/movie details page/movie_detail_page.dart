import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/domain/serach/model/search_model/search_response/result.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key, required this.searchResultData})
      : super(key: key);
  final SearchResultData searchResultData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: NetworkImage(
                      "$kImageBaseUrlr${searchResultData.backdropPath}",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            kheight,
            Text(
              searchResultData.originalTitle != null
                  ? searchResultData.originalTitle!
                  : '',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(searchResultData.overview != null
                ? searchResultData.overview!
                : 'Description not available')
          ],
        ),
      ),
    );
  }
}
