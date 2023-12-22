import 'package:flutter/material.dart';

class DoubleTween extends Tween<double> {
  DoubleTween({super.begin = 0.0, super.end = 1.0});

  @override
  double lerp(double t) => begin! + (end! - begin!) * t;
}
