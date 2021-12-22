import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:la_music/data/services/photo_service.dart';
import 'package:la_music/domain/model/photo_dto/photo_dto.dart';
import 'package:la_music/internal/dependency/injection_config.dart';

part 'gallery_event.dart';
part 'gallery_state.dart';
part 'gallery_bloc.freezed.dart';

@singleton
class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryBloc() : super(const GalleryState.initial()) {
    on<FetchPhotoEvent>((event, emit) async {
      emit(const GalleryState.loading());

      await Future.delayed(Duration(seconds: 1));
      final List<PhotoDto> photos = await getIt<PhotoService>().fetchPhoto();

      emit(GalleryState.loaded(photos: photos));
    });
  }
}
