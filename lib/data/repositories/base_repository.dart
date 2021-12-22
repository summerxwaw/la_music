import 'package:dio/dio.dart';
import 'package:la_music/data/api/rest_client.dart';

abstract class BaseRepository {
  BaseRepository(this.dio) : api = RestClient(dio);

  final Dio dio;
  RestClient api;
}
