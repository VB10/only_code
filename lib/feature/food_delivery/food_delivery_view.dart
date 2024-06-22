import 'package:flutter/material.dart';
import 'package:only_code/feature/food_delivery/core/food_body_items.dart';
import 'package:only_code/feature/food_delivery/core/food_body_top_model.dart';
import 'package:only_code/feature/food_delivery/core/food_delivery_constants.dart';
import 'package:only_code/feature/food_delivery/core/food_delivery_view_style.dart';
import 'package:only_code/feature/food_delivery/widget/food_delivery_app_bar.dart';

part './widget/food_delivery_body_top.dart';

final class FoodDeliveryView extends StatefulWidget {
  const FoodDeliveryView({Key? key}) : super(key: key);
  @override
  State<FoodDeliveryView> createState() => _FoodDeliveryViewState();
}

class _FoodDeliveryViewState extends State<FoodDeliveryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FoodDeliveryAppBar(
        onSearch: (String value) {},
      ),
      body: ListView(
        children: [
          const _FoodDeliveryBodyTop(),
          Padding(
            padding: FoodDeliveryViewPadding.horizontalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Title(
                    context: context,
                    data: FoodDeliveryConstants.keys.dailyDeals),
                const _DailyDeals(),
                _Title(
                    context: context,
                    data: FoodDeliveryConstants.keys.cuisines),
                const _Cuisines(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final class _DailyDeals extends StatelessWidget {
  const _DailyDeals();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: FoodBodyItems.dailyDeals.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Image.asset(FoodBodyItems.dailyDeals[index]);
        },
      ),
    );
  }
}

class _Cuisines extends StatelessWidget {
  const _Cuisines({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: FoodBodyItems.cuisines.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Image.asset(FoodBodyItems.cuisines[index]);
        },
      ),
    );
  }
}

final class _Title extends Text {
  _Title({required String data, required BuildContext context})
      : super(
          data,
          style: FoodDeliveryViewTextStyle(context).titleMedium?.copyWith(
                color: FoodDeliveryViewColors.black,
                fontWeight: FontWeight.bold,
              ),
        );
}
