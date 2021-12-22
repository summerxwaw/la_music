import 'dart:math';

import 'package:flutter/material.dart';

class FadeAnimationContainer extends StatefulWidget {
  final Widget child;

  const FadeAnimationContainer({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  _FadeAnimationContainerState createState() => _FadeAnimationContainerState();
}

class _FadeAnimationContainerState extends State<FadeAnimationContainer> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    _animation = Tween<double>(begin: 0.0, end: pi * 2).animate(_animationController);
    _animationController.repeat(period: const Duration(seconds: 1));
    _animationController.addListener(loading);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.removeListener(loading);
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.rotate(
          angle: _animation.value,
          child: widget.child,
        ),
      ],
    );
  }

  void loading() => setState(() {});
}
