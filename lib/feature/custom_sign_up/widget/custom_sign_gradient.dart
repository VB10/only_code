part of '../custom_sign_up.dart';

/// CustomSignGradient for background
///
/// Values [ Green, White, White, Orange ]
final class _CustomSignGradient extends StatelessWidget {
  const _CustomSignGradient({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: _GradientBody(),
          ),
        ),
        child,
      ],
    );
  }
}

final class _GradientBody extends LinearGradient {
  _GradientBody()
      : super(
          stops: const [0, 0.1, 0.9, 1.0],
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 137, 245, 141),
            Colors.white,
            Colors.white,
            Color.fromARGB(255, 233, 155, 38),
          ],
        );
}
