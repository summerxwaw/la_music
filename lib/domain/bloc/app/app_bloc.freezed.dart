// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  AppInitEvent init() {
    return const AppInitEvent();
  }

  AppChangeTheamEvent changeTheam() {
    return const AppChangeTheamEvent();
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() changeTheam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeTheam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeTheam,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitEvent value) init,
    required TResult Function(AppChangeTheamEvent value) changeTheam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppInitEvent value)? init,
    TResult Function(AppChangeTheamEvent value)? changeTheam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitEvent value)? init,
    TResult Function(AppChangeTheamEvent value)? changeTheam,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class $AppInitEventCopyWith<$Res> {
  factory $AppInitEventCopyWith(
          AppInitEvent value, $Res Function(AppInitEvent) then) =
      _$AppInitEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppInitEventCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements $AppInitEventCopyWith<$Res> {
  _$AppInitEventCopyWithImpl(
      AppInitEvent _value, $Res Function(AppInitEvent) _then)
      : super(_value, (v) => _then(v as AppInitEvent));

  @override
  AppInitEvent get _value => super._value as AppInitEvent;
}

/// @nodoc

class _$AppInitEvent implements AppInitEvent {
  const _$AppInitEvent();

  @override
  String toString() {
    return 'AppEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppInitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() changeTheam,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeTheam,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeTheam,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitEvent value) init,
    required TResult Function(AppChangeTheamEvent value) changeTheam,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppInitEvent value)? init,
    TResult Function(AppChangeTheamEvent value)? changeTheam,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitEvent value)? init,
    TResult Function(AppChangeTheamEvent value)? changeTheam,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AppInitEvent implements AppEvent {
  const factory AppInitEvent() = _$AppInitEvent;
}

/// @nodoc
abstract class $AppChangeTheamEventCopyWith<$Res> {
  factory $AppChangeTheamEventCopyWith(
          AppChangeTheamEvent value, $Res Function(AppChangeTheamEvent) then) =
      _$AppChangeTheamEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppChangeTheamEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements $AppChangeTheamEventCopyWith<$Res> {
  _$AppChangeTheamEventCopyWithImpl(
      AppChangeTheamEvent _value, $Res Function(AppChangeTheamEvent) _then)
      : super(_value, (v) => _then(v as AppChangeTheamEvent));

  @override
  AppChangeTheamEvent get _value => super._value as AppChangeTheamEvent;
}

/// @nodoc

class _$AppChangeTheamEvent implements AppChangeTheamEvent {
  const _$AppChangeTheamEvent();

  @override
  String toString() {
    return 'AppEvent.changeTheam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppChangeTheamEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() changeTheam,
  }) {
    return changeTheam();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeTheam,
  }) {
    return changeTheam?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeTheam,
    required TResult orElse(),
  }) {
    if (changeTheam != null) {
      return changeTheam();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitEvent value) init,
    required TResult Function(AppChangeTheamEvent value) changeTheam,
  }) {
    return changeTheam(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppInitEvent value)? init,
    TResult Function(AppChangeTheamEvent value)? changeTheam,
  }) {
    return changeTheam?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitEvent value)? init,
    TResult Function(AppChangeTheamEvent value)? changeTheam,
    required TResult orElse(),
  }) {
    if (changeTheam != null) {
      return changeTheam(this);
    }
    return orElse();
  }
}

abstract class AppChangeTheamEvent implements AppEvent {
  const factory AppChangeTheamEvent() = _$AppChangeTheamEvent;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call({int? counter, ThemeData? themeData}) {
    return _AppState(
      counter: counter,
      themeData: themeData,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  int? get counter => throw _privateConstructorUsedError;
  ThemeData? get themeData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({int? counter, ThemeData? themeData});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? counter = freezed,
    Object? themeData = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int?,
      themeData: themeData == freezed
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({int? counter, ThemeData? themeData});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? counter = freezed,
    Object? themeData = freezed,
  }) {
    return _then(_AppState(
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int?,
      themeData: themeData == freezed
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc

class _$_AppState extends _AppState {
  const _$_AppState({this.counter, this.themeData}) : super._();

  @override
  final int? counter;
  @override
  final ThemeData? themeData;

  @override
  String toString() {
    return 'AppState(counter: $counter, themeData: $themeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality().equals(other.counter, counter) &&
            const DeepCollectionEquality().equals(other.themeData, themeData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(counter),
      const DeepCollectionEquality().hash(themeData));

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState extends AppState {
  const factory _AppState({int? counter, ThemeData? themeData}) = _$_AppState;
  const _AppState._() : super._();

  @override
  int? get counter;
  @override
  ThemeData? get themeData;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
