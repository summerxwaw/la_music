part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const AppState._();
  const factory AppState({
    int? counter,
    ThemeData? themeData,
  }) = _AppState;
}
