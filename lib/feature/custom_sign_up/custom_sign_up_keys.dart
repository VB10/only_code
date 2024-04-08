import 'package:flutter/material.dart';

@immutable

/// Custom sign up keys
final class CustomSignUpKeys {
  CustomSignUpKeys._();

  /// Strings
  static const headerTitle = 'Let\'s sign you up!';
  static const headerSubtitle = 'Create an account to get all features';

  /// Controllers
  static const nameControllerTitle = 'Name';
  static const emailControllerTitle = 'Email';
  static const passwordControllerTitle = 'Password';

  /// Buttons
  static const signUpButtonTitle = 'SignUp';
  static const checkBoxTitle = 'I agree with terms and conditions';
  static const alreadyHaveAccount = 'Already have an account? ';
  static const signIn = 'Sign In';
}
