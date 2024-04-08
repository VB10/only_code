import 'package:flutter/material.dart';
import 'package:only_code/feature/authentic/authentic_board.dart';

class AuthenticView extends StatefulWidget {
  const AuthenticView({super.key});
  @override
  State<AuthenticView> createState() => _AuthenticViewState();
}

class _AuthenticViewState extends State<AuthenticView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(flex: 4, child: _BodyHeader()),
          Expanded(
            flex: 3,
            child: _BodySubView(
              AuthenticBoard(
                title: 'Best Quality For Your Qutfit',
                description:
                    "Explore the 2021's best clothes from over 20k brands",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BodyHeader extends StatelessWidget {
  const _BodyHeader();

  @override
  Widget build(BuildContext context) {
    // wee ned to change image to svg etc.
    return Image.asset(
      _ImagePath.women.png,
      fit: BoxFit.cover,
    );
  }
}

class _BodySubView extends StatelessWidget {
  const _BodySubView(this.model);
  final AuthenticBoard model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _EmptyHeight(),
        Text(
          model.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
              ),
        ),
        const _EmptyHeight(),
        Text(
          model.description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w300,
              ),
        ),
        const _EmptyHeight(),
        const _GetStarted(),
      ],
    );
  }
}

class _GetStarted extends StatelessWidget {
  const _GetStarted();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Theme.of(context).colorScheme.error.withOpacity(0.8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.5,
          child: const Center(child: Text('Get Started')),
        ),
      ),
    );
  }
}

class _EmptyHeight extends StatelessWidget {
  const _EmptyHeight();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 24);
  }
}

class _ImagePath {
  static const women = 'img_women';
}

extension on String {
  String get png => 'assets/img/$this.png';
}
