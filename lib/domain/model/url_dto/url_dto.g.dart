// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UrlDto _$$_UrlDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_UrlDto',
      json,
      ($checkedConvert) {
        final val = _$_UrlDto(
          raw: $checkedConvert('raw', (v) => v as String?),
          full: $checkedConvert('full', (v) => v as String?),
          regular: $checkedConvert('regular', (v) => v as String?),
          small: $checkedConvert('small', (v) => v as String?),
          thumb: $checkedConvert('thumb', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UrlDtoToJson(_$_UrlDto instance) => <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };
