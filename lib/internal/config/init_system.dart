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
    onError: (error) async {},
    onRequest: (options) async {},
    onResponse: (t) async {},
  );

  await ErrorInterceptor.instance.init(
    onErrorCallback: (error) {},
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
