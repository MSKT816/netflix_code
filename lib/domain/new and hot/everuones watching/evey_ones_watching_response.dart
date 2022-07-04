import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/new%20and%20hot/everuones%20watching/evey_ones_watching/model/evey_ones_watching.dart';

abstract class HotAndNewService{
  Future<Either<MainFailure,HotAndNewResponse>> getHotAndNewMovieData();
    Future<Either<MainFailure,HotAndNewResponse>> getHotAndNewTVData();
}