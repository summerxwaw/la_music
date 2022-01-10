import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_music/domain/bloc/gallery/gallery_bloc.dart';
import 'package:la_music/presentation/widgets/fade_animation_container.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocProvider(
        create: (context) => GalleryBloc()..add(const FetchPhotoEvent()),
        child: const _GalleryWidget(),
      ),
    );
  }
}

class _GalleryWidget extends StatelessWidget {
  const _GalleryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GalleryBloc>().state;

    return state.when(
      initial: () => const Center(
        child: Text('init'),
      ),
      loading: () => const Center(child: FadeAnimationContainer(child: Text('Loading'))),
      loaded: (photos) {
        return ListView.builder(
            itemCount: photos.length,
            itemBuilder: (ctx, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Image.network(
                  photos[i].url!.small!,
                  gaplessPlayback: true,
                ),
              );
            });
      },
    );
  }
}
