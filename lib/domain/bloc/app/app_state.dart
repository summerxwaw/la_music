part of 'app_bloc.dart';

// @immutable
// abstract class AppState extends Equatable {
//   const AppState();

//   @override
//   List<Object?> get props => [];
// }

// class AppInitial extends AppState {}

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _AppInitialState;
}
