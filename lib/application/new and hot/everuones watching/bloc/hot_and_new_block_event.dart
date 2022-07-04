part of 'hot_and_new_block_bloc.dart';

@freezed
class HotAndNewBlockEvent with _$HotAndNewBlockEvent {
  const factory HotAndNewBlockEvent.loadDataInCommingSoon() =
      _LoadDataInCommingSoon;
  const factory HotAndNewBlockEvent.loadDataInEveryOneWaching() =
      _LoadDataInEveryOneWaching;
}
