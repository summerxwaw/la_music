import 'package:dio/dio.dart';
import 'package:la_music/data/api/rest_client.dart';
// TODO(Denis): Repository also can work with storage, so rename as BaseApi/BaseApiRepo/etc
abstract class BaseRepository {
  BaseRepository(this.dio) : api = RestClient(dio);

  final Dio dio;
  RestClient api;
}
