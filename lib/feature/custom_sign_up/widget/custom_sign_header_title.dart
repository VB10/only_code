part of '../custom_sign_up.dart';

final class _HeaderTitle extends StatelessWidget {
  const _HeaderTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomSignUpPadding.medium.paddingVertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(CustomSignUpKeys.headerTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.only(top: CustomSignUpPadding.low.value),
            child: Text(
              CustomSignUpKeys.headerSubtitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
