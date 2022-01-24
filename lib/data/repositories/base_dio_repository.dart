import 'package:dio/dio.dart';
import 'package:la_music/data/api/rest_client.dart';
import 'package:la_music/domain/model/photo_dto/photo_model.dart';

// TODO(Denis): Repository also can work with storage, so rename as BaseApi/BaseApiRepo/etc
// done!
abstract class PhotoRepository {
  PhotoRepository(this.dio) : api = RestClient(dio);

  final Dio dio;
  final RestClient api;

  Future<List<PhotoModel>> fetchPhoto();
}
