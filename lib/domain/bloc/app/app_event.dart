part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.init() = AppInitEvent;

  const factory AppEvent.changeTheam() = AppChangeTheamEvent;
}
