// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/network/api.dart' as _i11;
import 'features/authentication/bloc/cubit/sign_up_cubit.dart' as _i6;
import 'features/authentication/data/auth_repository.dart' as _i3;
import 'features/authentication/data/auth_repository_impl.dart' as _i4;
import 'features/authentication/data/auth_store.dart' as _i5;
import 'features/profile/cubit/profile_cubit.dart' as _i10;
import 'features/profile/data/profile_repository.dart' as _i8;
import 'features/profile/data/profile_repository_impl.dart' as _i9;
import 'swagger_generated_code/your_one_service.swagger.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.AuthRepository>(() => _i4.AuthRepositoryImpl());
  gh.singleton<_i5.AuthStore>(_i5.AuthStore());
  gh.factory<_i6.SignUpCubit>(() => _i6.SignUpCubit(get<_i3.AuthRepository>()));
  gh.factory<_i7.YourOneService>(
      () => apiInjectableModule.getDio(get<_i5.AuthStore>()));
  gh.lazySingleton<_i8.ProfileRepository>(
      () => _i9.ProfileRepositoryImpl(api: get<_i7.YourOneService>()));
  gh.factory<_i10.ProfileCubit>(
      () => _i10.ProfileCubit(get<_i8.ProfileRepository>()));
  return get;
}

class _$ApiInjectableModule extends _i11.ApiInjectableModule {}
