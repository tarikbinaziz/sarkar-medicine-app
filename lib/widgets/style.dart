import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

class Style extends StyleHook {
  @override
  double get activeIconSize => 50;

  @override
  double get activeIconMargin => 20;

  @override
  double get iconSize => 24;

  @override
  TextStyle textStyle(Color color, String? fontFamily) {
    // TODO: implement textStyle
    return TextStyle(fontSize: 12, color: color);
    throw UnimplementedError();
  }
}
