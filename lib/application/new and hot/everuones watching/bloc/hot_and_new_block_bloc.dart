import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/new%20and%20hot/everuones%20watching/evey_ones_watching_response.dart';

import '../../../../domain/new and hot/everuones watching/evey_ones_watching/model/evey_ones_watching.dart';

part 'hot_and_new_block_event.dart';
part 'hot_and_new_block_state.dart';
part 'hot_and_new_block_bloc.freezed.dart';

@injectable
class HotAndNewBlockBloc
    extends Bloc<HotAndNewBlockEvent, HotAndNewBlockState> {
  final HotAndNewService _hotAndNewService;
  HotAndNewBlockBloc(this._hotAndNewService)
      : super(HotAndNewBlockState.initial()) {
    //Send loading
    on<_LoadDataInCommingSoon>((event, emit) async {
      emit(const HotAndNewBlockState(
        commingSoonList: [],
        everyOneWatchingList: [],
        isLoading: true,
        hasError: false,
      ));
      //Get hot and new movie data
      final _result = await _hotAndNewService.getHotAndNewMovieData();
      final _newState = _result.fold((MainFailure failure) {
        return const HotAndNewBlockState(
          commingSoonList: [],
          everyOneWatchingList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResponse response) {
        return HotAndNewBlockState(
          commingSoonList: response.results,
          everyOneWatchingList: state.everyOneWatchingList,
          isLoading: false,
          hasError: false,
        );
      });
      emit(_newState);
    });

    //get hot and new TV data
    on<_LoadDataInEveryOneWaching>((event, emit) async {
      final _result = await _hotAndNewService.getHotAndNewTVData();
      final _newStae = _result.fold((MainFailure failure) {
        return const HotAndNewBlockState(
          commingSoonList: [],
          everyOneWatchingList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResponse response) {
        return HotAndNewBlockState(
          commingSoonList: state.commingSoonList,
          everyOneWatchingList: response.results,
          isLoading: false,
          hasError: false,
        );
      });
      emit(_newStae);
    });
  }
}
