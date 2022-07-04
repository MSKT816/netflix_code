import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/downloads/i_download_repo.dart';
import 'package:netflix_app/domain/downloads/model/downloads.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
];

ValueNotifier<Set<int>> likedVideoIdsNotifire = ValueNotifier({});

@injectable
class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  FastlaughBloc(
    IdownloadsRepo _downloadsRepo,
  ) : super(FastlaughState.initial()) {
    on<Initialize>((event, emit) async {
      emit(const FastlaughState(
        videosList: [],
        isLoading: true,
        isError: false,
      ));

      //get trending movies
      final result = await _downloadsRepo.getDownloadsImage();
      final _state = result.fold((l) {
        return const FastlaughState(
          videosList: [],
          isLoading: false,
          isError: true,
        );
      },
          (resp) => FastlaughState(
                videosList: resp,
                isLoading: false,
                isError: false,
              ));
      //send to UI
      emit(_state);
    });

    on<LikeVideo>((event, emit) async {
      likedVideoIdsNotifire.value.add(event.id);
    });
    on<UnlikeVideo>((event, emit) async {
      likedVideoIdsNotifire.value.remove(event.id);
    });
  }
}
