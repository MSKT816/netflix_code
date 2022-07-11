// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i12;
import '../../../application/fast_laugh/fastlaugh_bloc.dart' as _i13;
import '../../../application/home/home_bloc.dart' as _i14;
import '../../../application/new%20and%20hot/comming%20soon/comming_soon_bloc.dart'
    as _i11;
import '../../../application/new%20and%20hot/everuones%20watching/bloc/hot_and_new_block_bloc.dart'
    as _i15;
import '../../../application/search/search_bloc.dart' as _i16;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i8;
import '../../../infrastructure/new%20and%20hot/comming%20soon/comming_soon_repository.dart'
    as _i6;
import '../../../infrastructure/new%20and%20hot/everuones%20watching/everyone_watching_impl.dart'
    as _i4;
import '../../../infrastructure/search/serach_impl.dart' as _i10;
import '../../downloads/i_download_repo.dart' as _i7;
import '../../new%20and%20hot/comming%20soon/i_comming_soon_repo.dart' as _i5;
import '../../new%20and%20hot/everuones%20watching/evey_ones_watching_response.dart'
    as _i3;
import '../../serach/search_service.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.HotAndNewService>(() => _i4.HotAndNewImplimentation());
  gh.lazySingleton<_i5.ICommingSoon>(() => _i6.CommingSoonRepository());
  gh.lazySingleton<_i7.IdownloadsRepo>(() => _i8.DownloadsRepository());
  gh.lazySingleton<_i9.SearchService>(() => _i10.SearchImpl());
  gh.factory<_i11.CommingSoonBloc>(
      () => _i11.CommingSoonBloc(get<_i5.ICommingSoon>()));
  gh.factory<_i12.DownloadsBloc>(
      () => _i12.DownloadsBloc(get<_i7.IdownloadsRepo>()));
  gh.factory<_i13.FastlaughBloc>(
      () => _i13.FastlaughBloc(get<_i7.IdownloadsRepo>()));
  gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc(get<_i3.HotAndNewService>()));
  gh.factory<_i15.HotAndNewBlockBloc>(
      () => _i15.HotAndNewBlockBloc(get<_i3.HotAndNewService>()));
  gh.factory<_i16.SearchBloc>(() =>
      _i16.SearchBloc(get<_i7.IdownloadsRepo>(), get<_i9.SearchService>()));
  return get;
}
