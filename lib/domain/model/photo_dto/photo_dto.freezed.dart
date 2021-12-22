// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoDto _$PhotoDtoFromJson(Map<String, dynamic> json) {
  return _PhotoDto.fromJson(json);
}

/// @nodoc
class _$PhotoDtoTearOff {
  const _$PhotoDtoTearOff();

  _PhotoDto call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'alt_description') String? altDescription,
      @JsonKey(name: 'urls') UrlDto? url,
      @JsonKey(name: 'likes') int? likes}) {
    return _PhotoDto(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: description,
      altDescription: altDescription,
      url: url,
      likes: likes,
    );
  }

  PhotoDto fromJson(Map<String, Object?> json) {
    return PhotoDto.fromJson(json);
  }
}

/// @nodoc
const $PhotoDto = _$PhotoDtoTearOff();

/// @nodoc
mixin _$PhotoDto {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt_description')
  String? get altDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'urls')
  UrlDto? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes')
  int? get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoDtoCopyWith<PhotoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoDtoCopyWith<$Res> {
  factory $PhotoDtoCopyWith(PhotoDto value, $Res Function(PhotoDto) then) =
      _$PhotoDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'alt_description') String? altDescription,
      @JsonKey(name: 'urls') UrlDto? url,
      @JsonKey(name: 'likes') int? likes});

  $UrlDtoCopyWith<$Res>? get url;
}

/// @nodoc
class _$PhotoDtoCopyWithImpl<$Res> implements $PhotoDtoCopyWith<$Res> {
  _$PhotoDtoCopyWithImpl(this._value, this._then);

  final PhotoDto _value;
  // ignore: unused_field
  final $Res Function(PhotoDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? url = freezed,
    Object? likes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: altDescription == freezed
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as UrlDto?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $UrlDtoCopyWith<$Res>? get url {
    if (_value.url == null) {
      return null;
    }

    return $UrlDtoCopyWith<$Res>(_value.url!, (value) {
      return _then(_value.copyWith(url: value));
    });
  }
}

/// @nodoc
abstract class _$PhotoDtoCopyWith<$Res> implements $PhotoDtoCopyWith<$Res> {
  factory _$PhotoDtoCopyWith(_PhotoDto value, $Res Function(_PhotoDto) then) =
      __$PhotoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'alt_description') String? altDescription,
      @JsonKey(name: 'urls') UrlDto? url,
      @JsonKey(name: 'likes') int? likes});

  @override
  $UrlDtoCopyWith<$Res>? get url;
}

/// @nodoc
class __$PhotoDtoCopyWithImpl<$Res> extends _$PhotoDtoCopyWithImpl<$Res>
    implements _$PhotoDtoCopyWith<$Res> {
  __$PhotoDtoCopyWithImpl(_PhotoDto _value, $Res Function(_PhotoDto) _then)
      : super(_value, (v) => _then(v as _PhotoDto));

  @override
  _PhotoDto get _value => super._value as _PhotoDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? url = freezed,
    Object? likes = freezed,
  }) {
    return _then(_PhotoDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: altDescription == freezed
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as UrlDto?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_PhotoDto extends _PhotoDto {
  const _$_PhotoDto(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'alt_description') this.altDescription,
      @JsonKey(name: 'urls') this.url,
      @JsonKey(name: 'likes') this.likes})
      : super._();

  factory _$_PhotoDto.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'alt_description')
  final String? altDescription;
  @override
  @JsonKey(name: 'urls')
  final UrlDto? url;
  @override
  @JsonKey(name: 'likes')
  final int? likes;

  @override
  String toString() {
    return 'PhotoDto(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, altDescription: $altDescription, url: $url, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotoDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.altDescription, altDescription) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.likes, likes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(altDescription),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(likes));

  @JsonKey(ignore: true)
  @override
  _$PhotoDtoCopyWith<_PhotoDto> get copyWith =>
      __$PhotoDtoCopyWithImpl<_PhotoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoDtoToJson(this);
  }
}

abstract class _PhotoDto extends PhotoDto {
  const factory _PhotoDto(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'alt_description') String? altDescription,
      @JsonKey(name: 'urls') UrlDto? url,
      @JsonKey(name: 'likes') int? likes}) = _$_PhotoDto;
  const _PhotoDto._() : super._();

  factory _PhotoDto.fromJson(Map<String, dynamic> json) = _$_PhotoDto.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'alt_description')
  String? get altDescription;
  @override
  @JsonKey(name: 'urls')
  UrlDto? get url;
  @override
  @JsonKey(name: 'likes')
  int? get likes;
  @override
  @JsonKey(ignore: true)
  _$PhotoDtoCopyWith<_PhotoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
