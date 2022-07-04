import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloadsUrl = "$kBaseUrl/trending/all/day?api_key=$apiKey#";
  static const homeTrendingUrl = "$kBaseUrl/trending/all/day?api_key=$apiKey#";
  static const collectionUrl = "$kBaseUrl/collection/302331?api_key=$apiKey#";
  static const searchUrl = "$kBaseUrl/search/movie?api_key=$apiKey";
  static const hotAndNewMovie="$kBaseUrl/discover/movie?api_key=$apiKey";
  static const hotAndNewTV="$kBaseUrl/discover/tv?api_key=$apiKey";
}
