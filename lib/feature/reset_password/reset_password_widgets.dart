part of './reset_password_view.dart';

final class _ResetPasswordResources {
  _ResetPasswordResources._();
  static const title = 'Reset your password';
  static const subTitle = 'Lets reset your password';
  static const newPassword = 'New password';
  static const submit = 'Submit';
}

class _NewPassword extends StatefulWidget {
  const _NewPassword(this.controller);
  final TextEditingController controller;

  @override
  State<_NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<_NewPassword> {
  bool _isSecured = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: TextFormField(
        validator: (value) {
          return ResetPasswordValidator(value).controlAndMessage();
        },
        obscureText: !_isSecured,
        decoration: InputDecoration(
            labelText: _ResetPasswordResources.newPassword,
            labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.black,
                ),
            contentPadding: const EdgeInsets.only(left: 16),
            border: _inputBorder(),
            enabledBorder: _inputBorder(),
            focusedBorder: _inputBorder(),
            suffixIcon: VisibleEyeButton(
              onChanged: (value) {
                setState(() {
                  _isSecured = value;
                });
              },
            )),
      ),
    );
  }

  OutlineInputBorder _inputBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(color: Colors.black12, width: 1),
    );
  }
}
