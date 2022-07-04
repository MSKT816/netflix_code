part of 'search_page_switch_block_bloc.dart';

@freezed
class SearchPageSwitchBlockEvent with _$SearchPageSwitchBlockEvent {
  const factory SearchPageSwitchBlockEvent.idleWidget() = IdleWidget;
  const factory SearchPageSwitchBlockEvent.searchResultWidget() =
      SearchResultWidget;
}
