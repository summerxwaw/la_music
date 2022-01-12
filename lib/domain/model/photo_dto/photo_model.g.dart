// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoModel _$$_PhotoModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PhotoModel',
      json,
      ($checkedConvert) {
        final val = _$_PhotoModel(
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

Map<String, dynamic> _$$_PhotoModelToJson(_$_PhotoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'description': instance.description,
      'alt_description': instance.altDescription,
      'urls': instance.url?.toJson(),
      'likes': instance.likes,
    };
