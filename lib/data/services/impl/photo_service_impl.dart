import 'package:injectable/injectable.dart';
import 'package:la_music/data/repositories/auth_repository.dart';
import 'package:la_music/data/services/photo_service.dart';
import 'package:la_music/domain/model/photo_dto/photo_dto.dart';

@LazySingleton(as: PhotoService)
class PhotoServiceImpl implements PhotoService {
  PhotoServiceImpl(this._repository);

  final PhotoRepository _repository;

  @override
  Future<List<PhotoDto>> fetchPhoto() async {
    final List<PhotoDto> response = await _repository.fetchPhoto();

    return response;
  }
}
