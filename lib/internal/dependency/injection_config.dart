import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:la_music/internal/config/app_config.dart';
import 'package:la_music/internal/dependency/injection_config.config.dart';
import 'package:logging/logging.dart';
// TODO(Denis): Should not be late
late final GetIt getIt;

@injectableInit
void initDependencies(AppConfig config) {
  getIt = GetIt.asNewInstance();

  $initGetIt(
    getIt,
    environment: config.name,
  );
}
// TODO(Denis): Should not be here, should not be global
void initLogger(AppConfig config) {
  Logger.root.level = config.enableLogs ? Level.ALL : Level.WARNING;
  Logger.root.onRecord.listen((rec) {
    // print(':::> ${rec.loggerName} ${rec.level.name}: ${rec.message} '
    //     '${rec.stackTrace?.toString() ?? ''}');
  });
}
