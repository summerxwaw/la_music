import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:la_music/domain/bloc/app/app_bloc.dart';
import 'package:la_music/generated/l10n.dart';
import 'package:la_music/internal/config/auto_router.dart';
import 'package:la_music/internal/dependency/injection_config.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppBloc>(),
      // TODO(Denis): Add buildWhen
      child: BlocBuilder<AppBloc, AppState>(
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
}
