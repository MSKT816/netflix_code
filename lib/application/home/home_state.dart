part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateID,
    required List<HotAndNEwData> pastYearMovieList,
    required List<HotAndNEwData> trendingMovieList,
    required List<HotAndNEwData> tensDramaMovieList,
    required List<HotAndNEwData> southIndianMovieList,
    required List<HotAndNEwData> trendingTVList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        stateID: '0',
        pastYearMovieList: [],
        trendingMovieList: [],
        tensDramaMovieList: [],
        southIndianMovieList: [],
        trendingTVList: [],
        isLoading: true,
        hasError: false,
      );
}
