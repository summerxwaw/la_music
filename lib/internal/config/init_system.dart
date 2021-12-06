import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:la_music/internal/interceptors/error_intercepter.dart';
import 'package:la_music/internal/interceptors/header_interceptor.dart';

@injectable
Future<void> initSystem() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );

  HeaderInterceptor.instance.init(
    onError: (DioError error) async {},
    onRequest: (RequestOptions options) async {},
    onResponse: (dynamic t) async {},
  );

  ErrorInterceptor.instance.init(
    onErrorCallback: (DioError error) {},
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
