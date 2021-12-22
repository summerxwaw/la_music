// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../presentation/dialogs/temp_dialog/temp_dialog.dart' as _i4;
import '../../presentation/page/gallery/gallery.dart' as _i3;
import '../../presentation/page/home/home.dart' as _i2;
import '../../presentation/page/splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Home());
    },
    GalleryRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Gallery());
    },
    TempDialogRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.TempDialog(),
          fullscreenDialog: true,
          transitionsBuilder: _i5.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashPageRoute.name, path: '/'),
        _i5.RouteConfig(HomeRoute.name, path: 'HomePage'),
        _i5.RouteConfig(GalleryRoute.name, path: 'HomePage/Gallery'),
        _i5.RouteConfig(TempDialogRoute.name, path: 'temp')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i5.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.Home]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: 'HomePage');

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.Gallery]
class GalleryRoute extends _i5.PageRouteInfo<void> {
  const GalleryRoute() : super(name, path: 'HomePage/Gallery');

  static const String name = 'GalleryRoute';
}

/// generated route for [_i4.TempDialog]
class TempDialogRoute extends _i5.PageRouteInfo<void> {
  const TempDialogRoute() : super(name, path: 'temp');

  static const String name = 'TempDialogRoute';
}
