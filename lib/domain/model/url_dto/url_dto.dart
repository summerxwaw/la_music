import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_dto.freezed.dart';

part 'url_dto.g.dart';

@freezed
class UrlDto with _$UrlDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory UrlDto({
    @JsonKey(name: 'raw') String? raw,
    @JsonKey(name: 'full') String? full,
    @JsonKey(name: 'regular') String? regular,
    @JsonKey(name: 'small') String? small,
    @JsonKey(name: 'thumb') String? thumb,
  }) = _UrlDto;

  const UrlDto._();

  factory UrlDto.fromJson(Map<String, dynamic> json) => _$UrlDtoFromJson(json);
}
