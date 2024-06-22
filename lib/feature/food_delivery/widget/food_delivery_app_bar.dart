import 'package:flutter/material.dart';
import 'package:only_code/feature/food_delivery/core/food_delivery_constants.dart';
import 'package:only_code/feature/food_delivery/core/food_delivery_view_style.dart';

class FoodDeliveryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const FoodDeliveryAppBar({required this.onSearch, super.key});

  /// Callback when user searches for a food item
  final ValueChanged<String> onSearch;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: FoodDeliveryViewColors.customRed,
      child: SafeArea(
        child: Padding(
          padding: FoodDeliveryViewPadding.horizontalPadding,
          child: Column(
            children: [const _Header(), _SearchField(onSearch: onSearch)],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

final class _SearchField extends StatelessWidget {
  const _SearchField({
    required this.onSearch,
  });

  final ValueChanged<String> onSearch;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: FoodDeliveryViewPadding.topPadding,
      child: TextField(
          onChanged: onSearch,
          decoration: InputDecoration(
            hintText: FoodDeliveryConstants.keys.search,
            hintStyle: FoodDeliveryViewTextStyle(context).bodyMedium?.copyWith(
                color: FoodDeliveryViewColors.black,
                fontWeight: FontWeight.normal),
            prefixIcon:
                const Icon(Icons.search, color: FoodDeliveryViewColors.black),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(24),
            ),
            filled: true,
            contentPadding: EdgeInsets.zero,
            fillColor: FoodDeliveryViewColors.white,
          )),
    );
  }
}

final class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.location_on, color: FoodDeliveryViewColors.white),
        Expanded(
          child: Text(
            FoodDeliveryConstants.keys.university,
            style: FoodDeliveryViewTextStyle(context).bodyMedium,
          ),
        ),
      ],
    );
  }
}
