import 'package:flutter/material.dart';
import 'package:only_code/feature/custom_sign_up/custom_sign_up.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: CustomSignUpView(),
    );
  }
}
