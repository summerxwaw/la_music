// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoDto _$$_PhotoDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_PhotoDto',
      json,
      ($checkedConvert) {
        final val = _$_PhotoDto(
          id: $checkedConvert('id', (v) => v as String?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          altDescription:
              $checkedConvert('alt_description', (v) => v as String?),
          url: $checkedConvert(
              'urls',
              (v) => v == null
                  ? null
                  : UrlDto.fromJson(v as Map<String, dynamic>)),
          likes: $checkedConvert('likes', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'altDescription': 'alt_description',
        'url': 'urls'
      },
    );

Map<String, dynamic> _$$_PhotoDtoToJson(_$_PhotoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'description': instance.description,
      'alt_description': instance.altDescription,
      'urls': instance.url?.toJson(),
      'likes': instance.likes,
    };
