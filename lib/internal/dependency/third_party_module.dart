import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:la_music/internal/config/app_config.dart';
import 'package:la_music/internal/config/auto_router.gr.dart';
import 'package:la_music/internal/dependency/injection_config.dart';
import 'package:la_music/internal/interceptors/error_intercepter.dart';
import 'package:la_music/internal/interceptors/header_interceptor.dart';

const _timeout = 10000;
// TODO(Denis): avoid any global variables
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
      getIt<ErrorInterceptor>(),
      getIt<HeaderInterceptor>()..set(dio: dio, isAuthorized: isAuthorized),
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
