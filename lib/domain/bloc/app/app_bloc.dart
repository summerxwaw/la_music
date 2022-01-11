import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:la_music/internal/config/auto_router.dart';
import 'package:la_music/internal/config/auto_router.gr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';
part 'app_state.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(AppState(
          counter: 0,
          themeData: _lightTheme,
        )) {
    on<AppInitEvent>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 1));

      await router.pushAndPopUntil(const HomeRoute(), predicate: (route) => false);
    });

    on<AppChangeTheamEvent>((event, emit) async {
      if (state.themeData!.brightness == Brightness.dark) {
        emit(state.copyWith(themeData: _lightTheme));
      } else {
        emit(state.copyWith(themeData: _darkTheme));
      }
    });
  }
}

final _lightTheme = ThemeData(
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
  ),
  brightness: Brightness.light,
);

final _darkTheme = ThemeData(
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Colors.black,
  ),
  brightness: Brightness.dark,
);
