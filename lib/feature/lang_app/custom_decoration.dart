import 'package:flutter/material.dart';

@immutable
final class CustomDecoration extends BoxDecoration {
  CustomDecoration()
      : super(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          gradient: LinearGradient(
            colors: [
              Colors.lightGreenAccent.shade700,
              Colors.green.shade900,
            ],
            stops: const [
              0.2,
              1.9,
            ],
          ),
        );
}
