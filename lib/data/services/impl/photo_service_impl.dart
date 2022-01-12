import 'package:injectable/injectable.dart';
import 'package:la_music/data/repositories/photo_repository.dart';
import 'package:la_music/data/services/photo_service.dart';
import 'package:la_music/domain/model/photo_dto/photo_model.dart';

@LazySingleton(as: PhotoService)
class PhotoServiceImpl implements PhotoService {
  PhotoServiceImpl(this._repository);

  final PhotoRepository _repository;

  @override
  Future<List<PhotoModel>> fetchPhoto() async {
    final List<PhotoModel> response = await _repository.fetchPhoto();

    return response;
  }
}
