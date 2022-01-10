import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:la_music/data/repositories/base_repository.dart';
import 'package:la_music/domain/model/photo_dto/photo_dto.dart';

@lazySingleton
class PhotoRepository extends BaseRepository {
  PhotoRepository(@Named('authorized') Dio dio) : super(dio);

  Future<List<PhotoDto>> fetchPhoto() async {
    final List<PhotoDto> response = await api.fetchPhoto();

    return response;
  }
}
