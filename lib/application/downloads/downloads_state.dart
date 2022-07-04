part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<MDownloads> downloads,
    required Option<Either<MainFailure, List<MDownloads>>>
        downloadSuccessFailerOption,
  }) = _DownloadState;
  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: true,
      downloads: [],
      downloadSuccessFailerOption: None(),
    );
  }
}
