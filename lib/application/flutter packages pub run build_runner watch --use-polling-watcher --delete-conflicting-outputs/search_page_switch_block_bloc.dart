import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_app/core/enum.dart';

part 'search_page_switch_block_event.dart';
part 'search_page_switch_block_state.dart';
part 'search_page_switch_block_bloc.freezed.dart';

class SearchPageSwitchBlockBloc
    extends Bloc<SearchPageSwitchBlockEvent, SearchPageSwitchBlockState> {
  SearchPageSwitchBlockBloc() : super(SearchPageSwitchBlockState.initial()) {
    on<SearchResultWidget>((event, emit) {
      return emit(state.copyWith(searchScreen: SearchScreen.searchResult));
    });
    on<IdleWidget>((event, emit) {
      return emit(state.copyWith(searchScreen: SearchScreen.idle));
    });
  }
}
