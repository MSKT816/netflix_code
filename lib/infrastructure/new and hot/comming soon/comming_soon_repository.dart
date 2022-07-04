import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/api_end_points.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/new%20and%20hot/comming%20soon/i_comming_soon_repo.dart';
import 'package:netflix_app/domain/new%20and%20hot/comming%20soon/model/comming_soon.dart';

@LazySingleton(as: ICommingSoon)
class CommingSoonRepository implements ICommingSoon {
  @override
  Future<Either<MainFailure, List<CommingSoon>>> getCommingSoonDetails() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloadsUrl);
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final comminSoonDetail = (response.data['results'] as List).map((e) {
          return CommingSoon.fromJson(e);
        }).toList();
        //log(comminSoonDetail.toString());
        return Right(comminSoonDetail);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      return left(const MainFailure.serverFailure());
    }
  }
}
