import 'package:auto_route/auto_route.dart';
import 'package:la_music/internal/config/auto_router.gr.dart';
import 'package:la_music/internal/dependency/injection_config.dart';
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
  ],
)
class $AppRouter {}
