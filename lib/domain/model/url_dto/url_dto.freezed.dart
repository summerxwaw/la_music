// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'url_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UrlDto _$UrlDtoFromJson(Map<String, dynamic> json) {
  return _UrlDto.fromJson(json);
}

/// @nodoc
class _$UrlDtoTearOff {
  const _$UrlDtoTearOff();

  _UrlDto call(
      {@JsonKey(name: 'raw') String? raw,
      @JsonKey(name: 'full') String? full,
      @JsonKey(name: 'regular') String? regular,
      @JsonKey(name: 'small') String? small,
      @JsonKey(name: 'thumb') String? thumb}) {
    return _UrlDto(
      raw: raw,
      full: full,
      regular: regular,
      small: small,
      thumb: thumb,
    );
  }

  UrlDto fromJson(Map<String, Object?> json) {
    return UrlDto.fromJson(json);
  }
}

/// @nodoc
const $UrlDto = _$UrlDtoTearOff();

/// @nodoc
mixin _$UrlDto {
  @JsonKey(name: 'raw')
  String? get raw => throw _privateConstructorUsedError;
  @JsonKey(name: 'full')
  String? get full => throw _privateConstructorUsedError;
  @JsonKey(name: 'regular')
  String? get regular => throw _privateConstructorUsedError;
  @JsonKey(name: 'small')
  String? get small => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumb')
  String? get thumb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlDtoCopyWith<UrlDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlDtoCopyWith<$Res> {
  factory $UrlDtoCopyWith(UrlDto value, $Res Function(UrlDto) then) =
      _$UrlDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'raw') String? raw,
      @JsonKey(name: 'full') String? full,
      @JsonKey(name: 'regular') String? regular,
      @JsonKey(name: 'small') String? small,
      @JsonKey(name: 'thumb') String? thumb});
}

/// @nodoc
class _$UrlDtoCopyWithImpl<$Res> implements $UrlDtoCopyWith<$Res> {
  _$UrlDtoCopyWithImpl(this._value, this._then);

  final UrlDto _value;
  // ignore: unused_field
  final $Res Function(UrlDto) _then;

  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_value.copyWith(
      raw: raw == freezed
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      regular: regular == freezed
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String?,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UrlDtoCopyWith<$Res> implements $UrlDtoCopyWith<$Res> {
  factory _$UrlDtoCopyWith(_UrlDto value, $Res Function(_UrlDto) then) =
      __$UrlDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'raw') String? raw,
      @JsonKey(name: 'full') String? full,
      @JsonKey(name: 'regular') String? regular,
      @JsonKey(name: 'small') String? small,
      @JsonKey(name: 'thumb') String? thumb});
}

/// @nodoc
class __$UrlDtoCopyWithImpl<$Res> extends _$UrlDtoCopyWithImpl<$Res>
    implements _$UrlDtoCopyWith<$Res> {
  __$UrlDtoCopyWithImpl(_UrlDto _value, $Res Function(_UrlDto) _then)
      : super(_value, (v) => _then(v as _UrlDto));

  @override
  _UrlDto get _value => super._value as _UrlDto;

  @override
  $Res call({
    Object? raw = freezed,
    Object? full = freezed,
    Object? regular = freezed,
    Object? small = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_UrlDto(
      raw: raw == freezed
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      full: full == freezed
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      regular: regular == freezed
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String?,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_UrlDto extends _UrlDto {
  const _$_UrlDto(
      {@JsonKey(name: 'raw') this.raw,
      @JsonKey(name: 'full') this.full,
      @JsonKey(name: 'regular') this.regular,
      @JsonKey(name: 'small') this.small,
      @JsonKey(name: 'thumb') this.thumb})
      : super._();

  factory _$_UrlDto.fromJson(Map<String, dynamic> json) =>
      _$$_UrlDtoFromJson(json);

  @override
  @JsonKey(name: 'raw')
  final String? raw;
  @override
  @JsonKey(name: 'full')
  final String? full;
  @override
  @JsonKey(name: 'regular')
  final String? regular;
  @override
  @JsonKey(name: 'small')
  final String? small;
  @override
  @JsonKey(name: 'thumb')
  final String? thumb;

  @override
  String toString() {
    return 'UrlDto(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UrlDto &&
            const DeepCollectionEquality().equals(other.raw, raw) &&
            const DeepCollectionEquality().equals(other.full, full) &&
            const DeepCollectionEquality().equals(other.regular, regular) &&
            const DeepCollectionEquality().equals(other.small, small) &&
            const DeepCollectionEquality().equals(other.thumb, thumb));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(raw),
      const DeepCollectionEquality().hash(full),
      const DeepCollectionEquality().hash(regular),
      const DeepCollectionEquality().hash(small),
      const DeepCollectionEquality().hash(thumb));

  @JsonKey(ignore: true)
  @override
  _$UrlDtoCopyWith<_UrlDto> get copyWith =>
      __$UrlDtoCopyWithImpl<_UrlDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlDtoToJson(this);
  }
}

abstract class _UrlDto extends UrlDto {
  const factory _UrlDto(
      {@JsonKey(name: 'raw') String? raw,
      @JsonKey(name: 'full') String? full,
      @JsonKey(name: 'regular') String? regular,
      @JsonKey(name: 'small') String? small,
      @JsonKey(name: 'thumb') String? thumb}) = _$_UrlDto;
  const _UrlDto._() : super._();

  factory _UrlDto.fromJson(Map<String, dynamic> json) = _$_UrlDto.fromJson;

  @override
  @JsonKey(name: 'raw')
  String? get raw;
  @override
  @JsonKey(name: 'full')
  String? get full;
  @override
  @JsonKey(name: 'regular')
  String? get regular;
  @override
  @JsonKey(name: 'small')
  String? get small;
  @override
  @JsonKey(name: 'thumb')
  String? get thumb;
  @override
  @JsonKey(ignore: true)
  _$UrlDtoCopyWith<_UrlDto> get copyWith => throw _privateConstructorUsedError;
}
