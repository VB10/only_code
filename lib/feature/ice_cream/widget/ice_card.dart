part of '../ice_cream_view.dart';

class _IceCard extends StatelessWidget {
  const _IceCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(IceCreamConstants.paddingAll),
        child: Column(
          children: [
            _Header(
              title: IceCreamConstants.cardTitle,
              onPressed: () {},
            ),
            Expanded(
              child: _BodyImage(),
            ),
            const _BottomField(
              IceCreamConstants.stockMoney,
              IceCreamConstants.stockTitle,
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const Spacer(),
        Card(
          child: IconButton.filled(
            onPressed: onPressed,
            icon: const Icon(
              Icons.favorite,
              color: IceCreamConstants.favoriteColor,
            ),
          ),
        ),
      ],
    );
  }
}

class _BodyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(IceCreamConstants.cardImageAsset);
  }
}

class _BottomField extends StatelessWidget {
  const _BottomField(this.money, this.storeName);
  final double money;
  final String storeName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(storeName),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: r'$'),
                  TextSpan(
                    text: '$money',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
          child: const Padding(
            padding: EdgeInsets.all(IceCreamConstants.paddingNormal),
            child: Row(
              children: [
                Text(IceCreamConstants.cardBottomText),
                Padding(
                  padding:
                      EdgeInsets.only(left: IceCreamConstants.paddingNormal),
                  child: Icon(Icons.shopping_basket_outlined),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
