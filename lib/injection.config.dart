// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/network/api.dart' as _i7;
import 'features/authentication/data/auth_store.dart' as _i3;
import 'features/profile/data/profile_repository.dart' as _i5;
import 'features/profile/data/profile_repository_impl.dart' as _i6;
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
  gh.lazySingleton<_i5.ProfileRepository>(
      () => _i6.ProfileRepositoryImpl(api: get<_i4.YourOneService>()));
  return get;
}

class _$ApiInjectableModule extends _i7.ApiInjectableModule {}
