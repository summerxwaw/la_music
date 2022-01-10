part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    int? counter,
    ThemeData? themeData,
  }) = _AppState;

  const AppState._();
}
