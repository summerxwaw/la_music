import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:la_music/domain/bloc/app/app_bloc.dart';
import 'package:la_music/generated/l10n.dart';
import 'package:la_music/internal/config/auto_router.dart';
import 'package:la_music/internal/config/auto_router.gr.dart';
import 'package:la_music/internal/dependency/injection_config.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO(Denis): Access bloc from context.read() not from getIt!
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S.of(context).appTitle + context.read<AppBloc>().state.counter.toString()),
            InkWell(
              onTap: () => setState(() {
                if (Intl.getCurrentLocale() == 'ru_RU') {
                  S.load(const Locale('en'));
                } else {
                  S.load(
                    const Locale('ru_RU'),
                  );
                }
              }),
              child: const Text('Change on language'),
            ),
            InkWell(
              onTap: () => router.push(const GalleryRoute()),
              child: const Text('Go to gallery'),
            ),
          ],
        ),
      ),
      floatingActionButton: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return FloatingActionButton(
            // TODO(Denis): context.read()
            onPressed: () => context.read<AppBloc>().add(const AppChangeTheamEvent()),
            child: Icon(state.themeData!.brightness == Brightness.dark ? Icons.theater_comedy_outlined : Icons.theater_comedy),
          );
        },
      ),
    );
  }
}
