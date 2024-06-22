enum FoodDeliveryImages {
  topFoodDelivery('img_food_delivery'),
  topShops('img_shops'),
  topPickUp('img_pick_up'),
  topDineIn('img_dine_in'),
  deals1('img_deals_1'),
  deals2('img_deals_2'),
  deals3('img_deals_3'),
  cuisine1('img_cui_1'),
  cuisine2('img_cui_2'),
  cuisine3('img_cui_3');

  final String _path;
  const FoodDeliveryImages(String path) : _path = path;

  String get assetPath => 'assets/food_delivery/$_path.png';
}
