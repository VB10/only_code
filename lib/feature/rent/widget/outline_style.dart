import 'package:flutter/material.dart';

mixin OutlineStyle {
  static final circleStyle = OutlinedButton.styleFrom(
    shape: const CircleBorder(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    side: const BorderSide(color: Colors.black, width: 2),
  );
}
