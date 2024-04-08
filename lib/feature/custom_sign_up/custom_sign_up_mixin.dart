import 'package:flutter/material.dart';
import 'package:only_code/feature/custom_sign_up/custom_sign_up.dart';

/// Custom sign up mixin for custom sign up view
mixin CustomSignUpMixin on State<CustomSignUpView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
