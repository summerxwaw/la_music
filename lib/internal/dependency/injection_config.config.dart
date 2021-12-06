// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../config/app_config.dart' as _i3;
import '../config/auto_router.gr.dart' as _i4;
import 'third_party_module.dart' as _i6;

const String _dev = 'dev';
const String _stage = 'stage';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyModule = _$ThirdPartyModule();
  gh.factory<_i3.AppConfig>(() => _i3.DevConfig(), registerFor: {_dev});
  gh.factory<_i3.AppConfig>(() => _i3.StageConfig(), registerFor: {_stage});
  gh.factory<_i3.AppConfig>(() => _i3.ProdConfig(), registerFor: {_prod});
  gh.singleton<_i4.AppRouter>(thirdPartyModule.router);
  gh.factory<_i5.Dio>(
      () => thirdPartyModule.provideAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i5.Dio>(
      () => thirdPartyModule.provideUnAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'unauthorized');
  return get;
}

class _$ThirdPartyModule extends _i6.ThirdPartyModule {}
