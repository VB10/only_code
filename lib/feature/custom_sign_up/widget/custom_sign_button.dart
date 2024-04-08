part of '../custom_sign_up.dart';

final class _CustomSignButton extends StatelessWidget {
  const _CustomSignButton();

  /// TODO: Core
  /// Theme of the app
  ThemeData _theme(BuildContext context) => Theme.of(context);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: CustomSignSizeItems.normalButtonHeight,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: CustomSignSizeItems.lowRadius,
            gradient: _ButtonGradient(),
          ),
          child: Center(
            child: Text(
              CustomSignUpKeys.signUpButtonTitle,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: _theme(context).colorScheme.background,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

final class _ButtonGradient extends LinearGradient {
  _ButtonGradient()
      : super(
          colors: [Colors.green, Colors.blue, Colors.purple, Colors.pink],
        );
}
