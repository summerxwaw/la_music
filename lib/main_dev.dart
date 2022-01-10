import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_music/domain/bloc/bloc_observer.dart';
import 'package:la_music/internal/application.dart';
import 'package:la_music/internal/config/app_config.dart';
import 'package:la_music/internal/config/init_system.dart';
import 'package:la_music/internal/dependency/injection_config.dart';

Future<void> main() async {
  initDependencies(DevConfig());
  initLogger(DevConfig());
  await initSystem();
  BlocOverrides.runZoned(
    () => runApp(const Application()),
    blocObserver: AppBlocObserver(),
  );
}
