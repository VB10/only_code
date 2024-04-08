part of '../custom_sign_up.dart';

final class _AlreadyHaveAccount extends StatelessWidget {
  const _AlreadyHaveAccount();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomSignUpPadding.medium.paddingVertical,
      child: Center(
        child: Text.rich(
          TextSpan(
            text: CustomSignUpKeys.alreadyHaveAccount,
            children: [
              TextSpan(
                text: CustomSignUpKeys.signIn,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      /// TODO: use from theme
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
