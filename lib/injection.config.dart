// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/network/api.dart' as _i17;
import 'features/authentication/bloc/cubit/sign_up_cubit.dart' as _i13;
import 'features/authentication/data/auth_repository.dart' as _i5;
import 'features/authentication/data/auth_repository_impl.dart' as _i6;
import 'features/authentication/data/auth_store.dart' as _i3;
import 'features/chat/cubit/chat_cubit.dart' as _i14;
import 'features/chat/data/chat_repository.dart' as _i7;
import 'features/chat/data/chat_repository_impl.dart' as _i8;
import 'features/profile/cubit/profile_cubit.dart' as _i15;
import 'features/profile/data/profile_repository.dart' as _i9;
import 'features/profile/data/profile_repository_impl.dart' as _i10;
import 'features/search/cubit/search_cubit.dart' as _i16;
import 'features/search/data/search_repository.dart' as _i11;
import 'features/search/data/search_repository_impl.dart' as _i12;
import 'swagger_generated_code/your_one_service.swagger.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final apiInjectableModule = _$ApiInjectableModule();
  gh.singleton<_i3.AuthStore>(_i3.AuthStore());
  gh.factory<_i4.YourOneService>(
      () => apiInjectableModule.getDio(get<_i3.AuthStore>()));
  gh.lazySingleton<_i5.AuthRepository>(
      () => _i6.AuthRepositoryImpl(api: get<_i4.YourOneService>()));
  gh.lazySingleton<_i7.ChatRepository>(
      () => _i8.ChatRepositoryImpl(get<_i4.YourOneService>()));
  gh.lazySingleton<_i9.ProfileRepository>(
      () => _i10.ProfileRepositoryImpl(api: get<_i4.YourOneService>()));
  gh.lazySingleton<_i11.SearchRepository>(
      () => _i12.SearchRepositoryImpl(api: get<_i4.YourOneService>()));
  gh.factory<_i13.SignUpCubit>(() => _i13.SignUpCubit(
        get<_i5.AuthRepository>(),
        get<_i9.ProfileRepository>(),
        get<_i3.AuthStore>(),
      ));
  gh.factory<_i14.ChatCubit>(() => _i14.ChatCubit(get<_i7.ChatRepository>()));
  gh.factory<_i15.ProfileCubit>(
      () => _i15.ProfileCubit(get<_i9.ProfileRepository>()));
  gh.factory<_i16.SearchCubit>(
      () => _i16.SearchCubit(get<_i11.SearchRepository>()));
  return get;
}

class _$ApiInjectableModule extends _i17.ApiInjectableModule {}
