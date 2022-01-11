import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_music/domain/bloc/bloc_observer.dart';
import 'package:la_music/internal/application.dart';
import 'package:la_music/internal/config/app_config.dart';
import 'package:la_music/internal/config/init_system.dart';
import 'package:la_music/internal/dependency/injection_config.dart';

Future<void> main() async {
  // TODO(Denis): Should be invoked as AppConfig through getIt
  initDependencies(DevConfig());
  initLogger(DevConfig());

  // TODO(Denis): has injectable that is not used
  // TODO(Denis): better make main_common for general init logic and move initSystem where
  await initSystem();

  BlocOverrides.runZoned(
    () => runApp(const Application()),
    blocObserver: AppBlocObserver(),
  );
}
