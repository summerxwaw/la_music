import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:la_music/domain/model/url_dto/url_dto.dart';

part 'photo_dto.freezed.dart';

part 'photo_dto.g.dart';

@freezed
class PhotoDto with _$PhotoDto {
  const PhotoDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory PhotoDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'alt_description') String? altDescription,
    @JsonKey(name: 'urls') UrlDto? url,
    @JsonKey(name: 'likes') int? likes,
  }) = _PhotoDto;

  factory PhotoDto.fromJson(Map<String, dynamic> json) => _$PhotoDtoFromJson(json);
}
