import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:only_code/feature/custom_sign_up/custom_sign_up_keys.dart';

import 'package:only_code/feature/custom_sign_up/custom_sign_up_mixin.dart';
import 'package:only_code/feature/custom_sign_up/custom_sign_up_padding.dart';
import 'package:only_code/feature/custom_sign_up/widget/custom_sign_size_items.dart';

part './widget/custom_sign_header_title.dart';
part './widget/custom_sign_controller.dart';
part './widget/custom_sign_button.dart';
part './widget/custom_sign_check_box.dart';
part './widget/custom_sign_already.dart';
part './widget/custom_sign_gradient.dart';

/// Custom sign up view from upplabs
final class CustomSignUpView extends StatefulWidget {
  const CustomSignUpView({super.key});
  @override
  State<CustomSignUpView> createState() => _CustomSignUpViewState();
}

class _CustomSignUpViewState extends State<CustomSignUpView>
    with CustomSignUpMixin {
  @override
  Widget build(BuildContext context) {
    return _CustomSignGradient(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const BackButton(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: CustomSignUpPadding.medium.paddingHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _HeaderTitle(),
                _SignUpTextField(
                  controller: nameController,
                  title: CustomSignUpKeys.nameControllerTitle,
                  keyboardType: TextInputType.name,
                ),
                _SignUpTextField(
                  controller: emailController,
                  title: CustomSignUpKeys.emailControllerTitle,
                  keyboardType: TextInputType.emailAddress,
                ),
                _SignUpTextField(
                  controller: passwordController,
                  title: CustomSignUpKeys.passwordControllerTitle,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const _CustomSignCheckBox(),
                const _CustomSignButton(),
                const _AlreadyHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
