part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState.initial() = _InitialState;

  const factory GalleryState.loading() = _LoadingState;

  const factory GalleryState.loaded({required List<PhotoDto> photos}) = _LoadedState;
}
