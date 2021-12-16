part of 'app_bloc.dart';

// @immutable
// abstract class AppEvent extends Equatable {
//   const AppEvent();

//   @override
//   List<Object?> get props => [];
// }

// class AppInitEvent extends AppEvent {}

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.init() = AppInitEvent;
}
