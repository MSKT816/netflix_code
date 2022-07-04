import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/i_download_repo.dart';
import 'package:netflix_app/domain/downloads/model/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IdownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      if (state.downloads.isNotEmpty) {
        emit(state);
        return;
      }
      emit(state.copyWith(
        isLoading: true,
        downloadSuccessFailerOption: none(),
      ));
      final Either<MainFailure, List<MDownloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImage();
      log(downloadsOption.toString());
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadSuccessFailerOption: Some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadSuccessFailerOption: Some(
              right(success),
            ),
          ),
        ),
      );
    });
  }
}
