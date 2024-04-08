import 'package:flutter/material.dart';

part './widget/ice_app_bar.dart';
part './widget/ice_card.dart';

extension on BuildContext {
  // or use kartal
  Size get sizeOf => MediaQuery.sizeOf(this);
  ThemeData get themeOf => Theme.of(this);
}

final class IceCreamConstants {
  const IceCreamConstants._();
  static const paddingAll = 16.0;

  static const radius = 16.0;

  static const paddingNormal = 8.0;

  static const cardTitle = 'Yogurt Land';

  static const favoriteColor = Colors.pink;
  static const cardImageAsset = 'assets/img/img_yogurtland.png';
  static const cardBottomText = 'To Cart';
  static const stockTitle = 'In Stock';
  static const stockMoney = 8.5;
  static const titleHome = 'What would you like to eat?';
}

class IceCreamView extends StatefulWidget {
  const IceCreamView({super.key});
  @override
  State<IceCreamView> createState() => _IceCreamViewState();
}

class _IceCreamViewState extends State<IceCreamView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.all(IceCreamConstants.paddingAll),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  IceCreamConstants.titleHome,
                  style: context.themeOf.textTheme.titleMedium,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: IceCreamConstants.paddingAll,
                  ),
                  child: _SearchField(),
                ),
              ],
            ),
          ),
          const _PageBody(),
        ],
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: const Icon(Icons.search),
              fillColor: Colors.grey[200],
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius:
                    BorderRadius.all(Radius.circular(IceCreamConstants.radius)),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list_outlined),
        ),
      ],
    );
  }
}

class _PageBody extends StatelessWidget {
  const _PageBody();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sizeOf.height * 0.6,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: 5,
        padding: const EdgeInsets.all(IceCreamConstants.paddingAll),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: context.sizeOf.width * 0.7,
            height: context.sizeOf.height * 0.6,
            child: const Padding(
              padding: EdgeInsets.only(left: IceCreamConstants.paddingAll),
              child: _IceCard(),
            ),
          );
        },
      ),
    );
  }
}
