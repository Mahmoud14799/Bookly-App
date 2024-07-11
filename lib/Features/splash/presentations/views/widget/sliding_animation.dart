import 'package:flutter/material.dart';

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({
    super.key,
    required this.slidingAnimation,
    required this.child,
  });
  final Widget child;
  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_) {
          return SlideTransition(
            position: slidingAnimation,
            child: child,
          );
        });
  }
}
