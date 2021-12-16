import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:la_music/domain/mixin/language.dart';
import 'package:la_music/generated/l10n.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S.of(context).appTitle),
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
              child: Text('Change on Ru'),
            )
          ],
        ),
      ),
    );
  }
}
