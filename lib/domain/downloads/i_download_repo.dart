import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/model/downloads.dart';

abstract class IdownloadsRepo {
  Future<Either<MainFailure, List<MDownloads>>> getDownloadsImage();
}
