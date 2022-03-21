part of 'search_page_switch_block_bloc.dart';

@freezed
class SearchPageSwitchBlockState with _$SearchPageSwitchBlockState {
  const factory SearchPageSwitchBlockState({
    required SearchScreen searchScreen,
  }) = _SearchPageSwitchBlockState;

  factory SearchPageSwitchBlockState.initial() =>
      SearchPageSwitchBlockState(searchScreen: SearchScreen.idle);
}
