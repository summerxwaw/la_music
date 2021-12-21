import 'package:flutter/material.dart';
import 'package:la_music/internal/config/auto_router.dart';

class TempDialog extends StatelessWidget {
  const TempDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.withOpacity(0.3),
      child: Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.amber,
          child: InkWell(onTap: () => router.pop(), child: const Text('TEST')),
        ),
      ),
    );
  }
}
