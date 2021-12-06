import 'package:auto_route/auto_route.dart';
import 'package:la_music/internal/config/auto_router.gr.dart';
import 'package:la_music/internal/dependency/injection_config.dart';
import 'package:la_music/presentation/page/home/home.dart';

AppRouter get router => dependencyContainer!.get<AppRouter>();

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: Home,
      initial: true,
    ),
  ],
)
class $AppRouter {}
