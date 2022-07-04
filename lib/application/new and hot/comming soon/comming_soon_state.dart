part of 'comming_soon_bloc.dart';

@freezed
class CommingSoonState with _$CommingSoonState {
  const factory CommingSoonState({
    required bool isLoading,
    required bool isError,
    required List<CommingSoon> commingSoonDetailsList,
    required Option<Either<MainFailure, List<CommingSoon>>>
        commingSoonDetailsOption,
  }) = _CommingSoonState;
  factory CommingSoonState.initial() {
    return const CommingSoonState(
      isLoading: false,
      isError: false,
      commingSoonDetailsList: [],
      commingSoonDetailsOption: None(),
    );
  }
}
