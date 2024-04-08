part of '../custom_sign_up.dart';

final class _CustomSignCheckBox extends StatelessWidget {
  const _CustomSignCheckBox();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: CustomSignUpPadding.low.value),
      child: Row(
        children: [
          Checkbox(
            value: true,

            /// TODO: use from theme
            activeColor: Colors.green,
            onChanged: (value) {},
          ),
          Text(CustomSignUpKeys.checkBoxTitle,
              style: Theme.of(context).textTheme.titleSmall),
        ],
      ),
    );
  }
}
