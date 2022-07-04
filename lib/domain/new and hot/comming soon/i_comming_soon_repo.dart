import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/new%20and%20hot/comming%20soon/model/comming_soon.dart';

abstract class ICommingSoon {
  Future<Either<MainFailure, List<CommingSoon>>> getCommingSoonDetails();
}
