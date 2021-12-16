// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/bloc/app/app_bloc.dart' as _i3;
import '../config/app_config.dart' as _i4;
import '../config/auto_router.gr.dart' as _i5;
import 'third_party_module.dart' as _i7;

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
  gh.singleton<_i3.AppBloc>(_i3.AppBloc());
  gh.factory<_i4.AppConfig>(() => _i4.DevConfig(), registerFor: {_dev});
  gh.factory<_i4.AppConfig>(() => _i4.StageConfig(), registerFor: {_stage});
  gh.factory<_i4.AppConfig>(() => _i4.ProdConfig(), registerFor: {_prod});
  gh.singleton<_i5.AppRouter>(thirdPartyModule.router);
  gh.factory<_i6.Dio>(
      () => thirdPartyModule.provideAuthorizedDio(get<_i4.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i6.Dio>(
      () => thirdPartyModule.provideUnAuthorizedDio(get<_i4.AppConfig>()),
      instanceName: 'unauthorized');
  return get;
}

class _$ThirdPartyModule extends _i7.ThirdPartyModule {}
