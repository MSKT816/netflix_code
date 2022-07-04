import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/i_download_repo.dart';
import 'package:netflix_app/domain/downloads/model/downloads.dart';
import 'package:netflix_app/domain/serach/model/search_model/search_response/result.dart';
import 'package:netflix_app/domain/serach/model/search_model/search_response/search_response.dart';
import 'package:netflix_app/domain/serach/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IdownloadsRepo _downloadService;
  final SearchService _searchService;
  SearchBloc(this._downloadService, this._searchService)
      : super(SearchState.initial()) {
    //idle state
    on<Initialize>((event, emit) async {
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isloading: true,
        isError: false,
      ));
      //get trending
      final _result = await _downloadService.getDownloadsImage();
      //show to UI
      _result.fold(
        (MainFailure f) => {
          emit(
            const SearchState(
              searchResultList: [],
              idleList: [],
              isloading: false,
              isError: true,
            ),
          )
        },
        (List<MDownloads> list) => {
          emit(SearchState(
            searchResultList: [],
            idleList: list,
            isloading: false,
            isError: false,
          ))
        },
      );
    });

    //Search Result state
    on<SearchMovie>((event, emit) async {
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isloading: true,
        isError: false,
      ));
      //call Search
      final _searchResult =
          await _searchService.serachMovies(movieQuery: event.movieQuery);

      //show to UI
      final state = _searchResult.fold((MainFailure f) {
        return const SearchState(
          searchResultList: [],
          idleList: [],
          isloading: false,
          isError: true,
        );
      }, (SearchResponse r) {
        return SearchState(
          searchResultList: r.results!,
          idleList: [],
          isloading: false,
          isError: false,
        );
      });
      emit(state);
    });
  }
}
