import 'package:flutter/material.dart';
import 'package:la_music/domain/bloc/app/app_bloc.dart';
import 'package:la_music/internal/dependency/injection_config.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    getIt<AppBloc>().add(AppInitEvent());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 250.0,
        ),
      ),
    );
  }
}
