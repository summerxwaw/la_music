// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../presentation/dialogs/temp_dialog/temp_dialog.dart' as _i3;
import '../../presentation/page/home/home.dart' as _i2;
import '../../presentation/page/splash/splash_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Home());
    },
    TempDialogRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.TempDialog(),
          fullscreenDialog: true,
          transitionsBuilder: _i4.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashPageRoute.name, path: '/'),
        _i4.RouteConfig(HomeRoute.name, path: 'HomePage'),
        _i4.RouteConfig(TempDialogRoute.name, path: 'temp')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i4.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.Home]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: 'HomePage');

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.TempDialog]
class TempDialogRoute extends _i4.PageRouteInfo<void> {
  const TempDialogRoute() : super(name, path: 'temp');

  static const String name = 'TempDialogRoute';
}
