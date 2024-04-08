import 'package:flutter/material.dart';
import 'package:only_code/feature/reset_password/reset_password_validator.dart';
import 'package:only_code/feature/reset_password/reset_password_view.dart';

mixin ResetPasswordMixin on State<ResetPasswordView> {
  final TextEditingController _controller = TextEditingController();

  TextEditingController get controller => _controller;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void onSubmitPressed() {
    if (!ResetPasswordValidator(_controller.text).control()) return;
  }
}
