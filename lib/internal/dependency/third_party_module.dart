import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:la_music/internal/config/app_config.dart';
import 'package:la_music/internal/config/auto_router.gr.dart';
import 'package:la_music/internal/interceptors/error_intercepter.dart';
import 'package:la_music/internal/interceptors/header_interceptor.dart';

const _timeout = 10000;

const String authorized = 'authorized';
const String unauthorized = 'unauthorized';

@module
abstract class ThirdPartyModule {
  BaseOptions get _dioOptions {
    return BaseOptions(
      connectTimeout: _timeout,
      receiveTimeout: _timeout,
      sendTimeout: _timeout,
    );
  }

  @Named(authorized)
  @injectable
  Dio provideAuthorizedDio(AppConfig config) => _getDio(config, true);

  @Named(unauthorized)
  @injectable
  Dio provideUnAuthorizedDio(AppConfig config) => _getDio(config, false);

  Dio _getDio(
    AppConfig config,
    bool isAuthorized,
  ) {
    final dio = Dio(_dioOptions);

    dio.options.baseUrl = config.baseUrl;

    final interceptors = [
      ErrorInterceptor.instance,
      HeaderInterceptor.instance..set(dio, isAuthorized),
    ];

    return dio
      ..interceptors.addAll([
        if (config.enableLogs) ...interceptors,
      ]);
  }

  @singleton
  @factoryMethod
  AppRouter get router => AppRouter();
}
