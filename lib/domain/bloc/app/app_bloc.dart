import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:la_music/internal/config/auto_router.dart';
import 'package:la_music/internal/config/auto_router.gr.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';
part 'app_state.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.initial()) {
    on<AppInitEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 5));

      await router.pushAndPopUntil(const HomeRoute(), predicate: (Route<dynamic> route) => false);

      emit(const AppState.initial());
    });
  }
}
