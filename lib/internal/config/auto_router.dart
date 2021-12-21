import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:la_music/internal/config/auto_router.gr.dart';
import 'package:la_music/internal/dependency/injection_config.dart';
import 'package:la_music/presentation/dialogs/temp_dialog/temp_dialog.dart';
import 'package:la_music/presentation/page/home/home.dart';
import 'package:la_music/presentation/page/splash/splash_page.dart';

AppRouter get router => getIt.get<AppRouter>();

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      page: Home,
      path: 'HomePage',
    ),
    CustomRoute(
      page: TempDialog,
      fullscreenDialog: true,
      path: 'temp',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    )
  ],
)
class $AppRouter {}

Route<T> myCustomRouteBuilder<T>(BuildContext context, Widget child, CustomPage<T> page) {
  return PageRouteBuilder(
    fullscreenDialog: page.fullscreenDialog,
    // this is important
    settings: page,
    pageBuilder: (_, __, ___) => child,
  );
}
