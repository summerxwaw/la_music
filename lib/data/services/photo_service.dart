import 'package:la_music/domain/model/photo_dto/photo_dto.dart';

abstract class PhotoService {
  Future<List<PhotoDto>> fetchPhoto();
}
