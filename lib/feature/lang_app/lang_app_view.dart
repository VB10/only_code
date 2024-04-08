import 'package:flutter/material.dart';
import 'package:only_code/feature/lang_app/custom_decoration.dart';
import 'package:only_code/feature/lang_app/lang_dropdown.dart';
import 'package:only_code/feature/lang_app/widget/course_grid.dart';

///========================================================================
/// KONUSMAK YOK :)
///=====================================================================

part './widget/today_challange_card.dart';

class LangAppView extends StatefulWidget {
  const LangAppView({super.key});
  @override
  State<LangAppView> createState() => _LangAppViewState();
}

class _LangAppViewState extends State<LangAppView> {
  static const _imageUrl = 'https://randomuser.me/api/portraits/lego/7.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          _Header(),
          _WelcomeBackCard(),
          _TodaysChallenge(),
          _YourCourseCard(),
          CourseGrid(),
        ],
      ),
    );
  }
}

class _YourCourseCard extends StatelessWidget {
  const _YourCourseCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _PagePadding.verticalNormal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Your Courses',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'View all',
              // it need to use theme
              style: TextStyle(color: _AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}

class _WelcomeBackCard extends StatelessWidget {
  const _WelcomeBackCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _PagePadding.verticalNormal,
      child: Text(
        'Welcome back!',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: Theme.of(context).textTheme.headlineMedium?.fontSize,
            ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(_LangAppViewState._imageUrl),
      ),
      title: Text(
        'Alias Jordan',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: const Padding(
        padding: EdgeInsets.only(top: 8),
        child: Row(
          children: [
            Icon(Icons.pin_drop_outlined, color: Colors.red),
            SizedBox(width: 5),
            Text('United kingdom'),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      leading: const Icon(Icons.menu_outlined),
      actions: const [
        LangDropDown(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

//MARK: Helpful

@immutable
final class _PagePadding {
  const _PagePadding._();
  static const onlyLeft = EdgeInsets.only(left: 16);

  static const EdgeInsets allNormal = EdgeInsets.all(16);

  static const EdgeInsets horizontalNormal =
      EdgeInsets.symmetric(horizontal: 16);

  static const EdgeInsets verticalNormal = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets verticalLow = EdgeInsets.symmetric(vertical: 8);
}

@immutable
class _AppColors {
  const _AppColors._();

  static const Color primary = Colors.green;
}
