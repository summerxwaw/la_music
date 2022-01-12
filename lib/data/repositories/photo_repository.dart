import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:la_music/data/repositories/base_dio_repository.dart';
import 'package:la_music/domain/model/photo_dto/photo_model.dart';

// TODO(Denis): @LazySingleton(as: BaseRepository) + use only abstraction
// done!
@injectable
@LazySingleton(as: BaseDioRepository)
class PhotoRepository extends BaseDioRepository {
  PhotoRepository(@Named('authorized') Dio dio) : super(dio);

  // BaseDioRepository dioRepository;

  Future<List<PhotoModel>> fetchPhoto() async {
    final List<PhotoModel> response = await api.fetchPhoto();

    return response;
  }
}
