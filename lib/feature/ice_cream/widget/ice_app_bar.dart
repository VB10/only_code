part of '../ice_cream_view.dart';

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  static const _randomUserUrl =
      'https://randomuser.me/api/portraits/lego/1.jpg';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: const IconThemeData.fallback().copyWith(
        color: Colors.black,
      ),
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          _Avatar(),
          _Title(),
        ],
      ),
      actions: [
        _Menu(
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _Menu extends StatelessWidget {
  const _Menu({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu_outlined),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hi, Train',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w700,
          ),
    );
  }
}

class _Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: NetworkImage(
        _AppBar._randomUserUrl,
      ),
    );
  }
}
