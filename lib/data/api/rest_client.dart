import 'package:la_music/domain/model/photo_dto/photo_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';
// TODO(Denis): move clientId
@RestApi(baseUrl: 'https://api.unsplash.com/photos/?client_id=HNcTQS4tPjlAR3uNg5csBssOzJInF7St-7yePTjoYRA')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('')
  Future<List<PhotoDto>> fetchPhoto();
}
