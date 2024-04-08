final class ResetPasswordValidator {
  final String? text;
  static const String _emptyError = 'This field cannot be empty';
  ResetPasswordValidator(this.text);

  String? controlAndMessage() {
    if (control()) {
      return null;
    }

    return _emptyError;
  }

  bool control() {
    if (text == null || text!.isEmpty) return false;
    if (text!.length < 8) return false;

    return true;
  }
}
