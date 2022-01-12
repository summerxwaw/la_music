import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:la_music/internal/config/auto_router.gr.dart';
import 'package:la_music/internal/dependency/injection_config.dart';
import 'package:la_music/presentation/dialogs/temp_dialog/temp_dialog.dart';
import 'package:la_music/presentation/page/gallery/gallery.dart';
import 'package:la_music/presentation/page/home/home.dart';
import 'package:la_music/presentation/page/splash/splash_page.dart';

// TODO(Denis): try it with nested navigation
AppRouter get router => getIt.get<AppRouter>();

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<dynamic>(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute<dynamic>(
      page: Home,
      path: 'HomePage',
    ),
    AutoRoute<dynamic>(
      page: Gallery,
      path: 'HomePage/Gallery',
    ),
    CustomRoute<dynamic>(
      page: TempDialog,
      fullscreenDialog: true,
      path: 'temp',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    )
  ],
)
class $AppRouter {}
