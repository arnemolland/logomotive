import 'package:flutter/material.dart';

class Railroad extends StatelessWidget {
  final Duration duration;
  final double start;
  final double end;
  final Widget child;
  final Curve curve;
  final bool animate;

  const Railroad({
    Key key,
    this.duration = const Duration(milliseconds: 2500),
    this.start = 100,
    this.end = -100,
    this.curve = Curves.bounceOut,
    this.child,
    this.animate = false,
  }) : super(key: key);

  /// convert 0-1 to 0-1-0
  double shake(double animation) =>
      2 * (1.5 - (1.5 - curve.transform(animation)).abs());

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      key: key,
      tween: Tween(begin: start, end: end),
      duration: duration,
      builder: (context, animation, child) => Transform.translate(
        offset: Offset(animation, 0),
        child: Stack(
          children: [
            child,
            AnimatedOpacity(
              duration: Duration(milliseconds: 250),
              opacity: (animation < start / 2 && animation > end / 2) ? 1 : 0,
              child: Align(
                alignment: Alignment(-1, 3),
                child: Text('Choo!'),
              ),
            ),
          ],
        ),
      ),
      child: child,
    );
  }
}
