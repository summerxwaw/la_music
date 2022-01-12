part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState.initial() = _InitialState;

  const factory GalleryState.loading() = _LoadingState;

  // TODO(Denis): DTO should not be exposed to UI
  // TODO(Denis): Should be converted from Dto to decent model
  const factory GalleryState.loaded({required List<PhotoModel> photos}) = _LoadedState;
}
