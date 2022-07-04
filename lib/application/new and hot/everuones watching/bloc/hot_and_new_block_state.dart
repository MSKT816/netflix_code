part of 'hot_and_new_block_bloc.dart';

@freezed
class HotAndNewBlockState with _$HotAndNewBlockState {
  const factory HotAndNewBlockState({
    required List<HotAndNEwData> commingSoonList,
    required List<HotAndNEwData> everyOneWatchingList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HotAndNewBlockState.initial() => const HotAndNewBlockState(
        commingSoonList: [],
        everyOneWatchingList: [],
        isLoading: false,
        hasError: false,
      );
}
