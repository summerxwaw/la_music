import 'package:la_music/domain/model/photo_dto/photo_model.dart';

// ignore: one_member_abstracts
abstract class PhotoService {
  Future<List<PhotoModel>> fetchPhoto();
}
