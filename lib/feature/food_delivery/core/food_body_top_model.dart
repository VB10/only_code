import 'package:only_code/feature/food_delivery/core/food_delivery_images.dart';

final class _FoodBodyTopModel {
  const _FoodBodyTopModel({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
  final String imagePath;
  final String title;
  final String subtitle;
}

final class FoodBodyTopModelItems {
  FoodBodyTopModelItems._();

  static final foodDelivery = _FoodBodyTopModel(
    imagePath: FoodDeliveryImages.topFoodDelivery.assetPath,
    title: 'Food Delivery',
    subtitle: 'Order from your favourite \n restaurants and home chefs',
  );

  static final foodShops = _FoodBodyTopModel(
    imagePath: FoodDeliveryImages.topShops.assetPath,
    title: 'Shops',
    subtitle: 'everyday essentials',
  );

  static final foodPickUp = _FoodBodyTopModel(
    imagePath: FoodDeliveryImages.topPickUp.assetPath,
    title: 'Pick Up',
    subtitle: 'Enjoy 50% off',
  );

  static final foodDineIn = _FoodBodyTopModel(
    imagePath: FoodDeliveryImages.topDineIn.assetPath,
    title: 'Dine In',
    subtitle: 'Eat out and save 75% off',
  );
}
