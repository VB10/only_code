part of '../food_delivery_view.dart';

class _FoodDeliveryBodyTop extends StatelessWidget {
  const _FoodDeliveryBodyTop();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: FoodDeliveryViewColors.lightGrey,
      child: Padding(
        padding: FoodDeliveryViewPadding.verticalPadding +
            FoodDeliveryViewPadding.horizontalPadding,
        child: Column(
          children: [
            _FoodDeliveryCard(
              child: Padding(
                padding: FoodDeliveryViewPadding.screenPadding +
                    FoodDeliveryViewPadding.bottomPadding,
                // ignore: prefer_const_constructors
                child: _FoodDeliveryItem(),
              ),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _FoodShopsCard()),
                Expanded(
                  child: Column(
                    children: [
                      _PickUpCard(),
                      _DineInCard(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DineInCard extends StatelessWidget {
  const _DineInCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: FoodDeliveryViewPadding.topPadding / 2,
      child: _FoodDeliveryCard(
        child: Padding(
          padding: FoodDeliveryViewPadding.screenPaddingHalf,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FoodBodyTopModelItems.foodDineIn.title,
                      style: FoodDeliveryViewTextStyle(context)
                          .titleMedium
                          ?.copyWith(
                            color: FoodDeliveryViewColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(FoodBodyTopModelItems.foodDineIn.subtitle),
                  ],
                ),
              ),
              Padding(
                padding: FoodDeliveryViewPadding.leftPadding / 3,
                child: Image.asset(FoodBodyTopModelItems.foodDineIn.imagePath),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PickUpCard extends StatelessWidget {
  const _PickUpCard();

  @override
  Widget build(BuildContext context) {
    return _FoodDeliveryCard(
      child: Padding(
        padding: FoodDeliveryViewPadding.screenPaddingHalf,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FoodBodyTopModelItems.foodPickUp.title,
                  style:
                      FoodDeliveryViewTextStyle(context).titleMedium?.copyWith(
                            color: FoodDeliveryViewColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                Text(
                  FoodBodyTopModelItems.foodPickUp.subtitle,
                  style:
                      FoodDeliveryViewTextStyle(context).bodyMedium?.copyWith(
                            color: FoodDeliveryViewColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: FoodDeliveryViewPadding.leftPadding,
                child: Image.asset(FoodBodyTopModelItems.foodPickUp.imagePath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FoodShopsCard extends StatelessWidget {
  const _FoodShopsCard();

  @override
  Widget build(BuildContext context) {
    return _FoodDeliveryCard(
      child: Padding(
        padding: FoodDeliveryViewPadding.screenPadding / 2 +
            FoodDeliveryViewPadding.bottomPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              FoodBodyTopModelItems.foodShops.title,
              style: FoodDeliveryViewTextStyle(context).titleMedium?.copyWith(
                    color: FoodDeliveryViewColors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              FoodBodyTopModelItems.foodShops.subtitle,
              style: FoodDeliveryViewTextStyle(context).bodyMedium?.copyWith(
                    color: FoodDeliveryViewColors.black,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(FoodBodyTopModelItems.foodShops.imagePath),
            ),
          ],
        ),
      ),
    );
  }
}

final class _FoodDeliveryCard extends Card {
  const _FoodDeliveryCard({super.child})
      : super(color: FoodDeliveryViewColors.white);
}

class _FoodDeliveryItem extends StatelessWidget {
  const _FoodDeliveryItem();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: FoodDeliveryViewPadding.rightPadding / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FoodBodyTopModelItems.foodDelivery.title,
                  style:
                      FoodDeliveryViewTextStyle(context).titleLarge?.copyWith(
                            color: FoodDeliveryViewColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                Text(
                  FoodBodyTopModelItems.foodDelivery.subtitle,
                  style:
                      FoodDeliveryViewTextStyle(context).bodyMedium?.copyWith(
                            color: FoodDeliveryViewColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                ),
              ],
            ),
          ),
        ),
        Image.asset(FoodBodyTopModelItems.foodDelivery.imagePath),
      ],
    );
  }
}
