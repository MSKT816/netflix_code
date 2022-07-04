import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/new%20and%20hot/comming%20soon/i_comming_soon_repo.dart';
import 'package:netflix_app/domain/new%20and%20hot/comming%20soon/model/comming_soon.dart';

part 'comming_soon_event.dart';
part 'comming_soon_state.dart';
part 'comming_soon_bloc.freezed.dart';

@injectable
class CommingSoonBloc extends Bloc<CommingSoonEvent, CommingSoonState> {
  final ICommingSoon _commingSoonRepo;
  CommingSoonBloc(this._commingSoonRepo) : super(CommingSoonState.initial()) {
    on<CommingSoonEvent>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );
      if (state.commingSoonDetailsList.isNotEmpty) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            commingSoonDetailsList: state.commingSoonDetailsList,
            commingSoonDetailsOption: Some(
              right(state.commingSoonDetailsList),
            ),
          ),
        );
        return;
      }
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
          commingSoonDetailsOption: none(),
        ),
      );
      final Either<MainFailure, List<CommingSoon>> commingsoonData =
          await _commingSoonRepo.getCommingSoonDetails();
      //log(commingsoonData.toString());
      emit(
        commingsoonData.fold(
          (failure) => state.copyWith(
            isLoading: false,
            isError: true,
            commingSoonDetailsOption: Some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            isError: false,
            commingSoonDetailsList: success,
            commingSoonDetailsOption: Some(
              right(success),
            ),
          ),
        ),
      );
    });
  }
}
