import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/new%20and%20hot/everuones%20watching/evey_ones_watching_response.dart';

import '../../domain/new and hot/everuones watching/evey_ones_watching/model/evey_ones_watching.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewService _homeService;

  HomeBloc(this._homeService) : super(HomeState.initial()) {
    //

    on<GetHomeScreenData>((event, emit) async {
      //Send loading to UI

      final _movieResult = await _homeService.getHotAndNewMovieData();
      final _tvResult = await _homeService.getHotAndNewTVData();
      //transform HotAndNEwData

      final state1 = _movieResult.fold((MainFailure failure) {
        return HomeState(
          stateID: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieList: [],
          trendingMovieList: [],
          tensDramaMovieList: [],
          southIndianMovieList: [],
          trendingTVList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResponse response) {
        List<HotAndNEwData> result = response.results;

        List<HotAndNEwData> pastYear = result;
        pastYear.shuffle();
        print(pastYear[0].title);
        result.shuffle();
        List<HotAndNEwData> trending = result;
        trending.shuffle();
        print(pastYear[0].title);
        result.shuffle();
        List<HotAndNEwData> southIndian = result;
        southIndian.shuffle();
        List<HotAndNEwData> dramas = result;
        dramas.shuffle();
        print(pastYear[0].title);
        // print(trending[0].posterPath);
        return HomeState(
          stateID: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieList: pastYear,
          trendingMovieList: trending,
          tensDramaMovieList: dramas,
          southIndianMovieList: southIndian,
          trendingTVList: state.trendingTVList,
          isLoading: false,
          hasError: false,
        );
      });
      emit(state1);

      final state2 = _tvResult.fold((MainFailure failure) {
        return HomeState(
          stateID: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieList: [],
          trendingMovieList: [],
          tensDramaMovieList: [],
          southIndianMovieList: [],
          trendingTVList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResponse response) {
        final top10List = response.results;
        return HomeState(
          stateID: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieList: state.pastYearMovieList,
          trendingMovieList: state.trendingMovieList,
          tensDramaMovieList: state.tensDramaMovieList,
          southIndianMovieList: state.southIndianMovieList,
          trendingTVList: top10List,
          isLoading: false,
          hasError: false,
        );
      });
      emit(state2);
    });
  }
}
