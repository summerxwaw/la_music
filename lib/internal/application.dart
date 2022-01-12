import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:la_music/domain/bloc/app/app_bloc.dart';
import 'package:la_music/generated/l10n.dart';
import 'package:la_music/internal/config/auto_router.dart';
import 'package:la_music/internal/dependency/injection_config.dart';
import 'package:la_music/internal/interceptors/error_intercepter.dart';
import 'package:la_music/internal/interceptors/header_interceptor.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initSystem();
    return BlocProvider(
      create: (context) => getIt<AppBloc>(),
      // TODO(Denis): Add buildWhen
      //done
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) {
          return true;
        },
        builder: (context, state) {
          return MaterialApp.router(
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1.0,
                ),
                child: child!,
              );
            },
            theme: state.themeData,
            debugShowCheckedModeBanner: false,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            routerDelegate: router.delegate(),
            routeInformationParser: router.defaultRouteParser(),
          );
        },
      ),
    );
  }

  Future<void> initSystem() async {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );

    getIt<HeaderInterceptor>().init(
      onError: (error) async {},
      onRequest: (options) async {},
      onResponse: (t) async {},
    );

    await getIt<ErrorInterceptor>().init(
      onErrorCallback: (error) {},
    );

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}
