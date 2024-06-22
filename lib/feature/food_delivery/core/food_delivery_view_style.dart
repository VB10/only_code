import 'package:flutter/material.dart';

final class FoodDeliveryViewColors {
  FoodDeliveryViewColors._();
  static const Color white = Colors.white;
  static const Color customRed = Color(0xffD00764);
  static const Color grey = Color(0xffBDBDBD);
  static const Color black = Colors.black;
  static const Color lightGrey = Color(0xffE8ECEF);
}

final class FoodDeliveryViewPadding {
  FoodDeliveryViewPadding._();
  static const EdgeInsets screenPadding = EdgeInsets.all(16);
  static const EdgeInsets screenPaddingHalf = EdgeInsets.all(8);
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets topPadding = EdgeInsets.only(top: 16);
  static const EdgeInsets bottomPadding = EdgeInsets.only(bottom: 16);
  static const EdgeInsets leftPadding = EdgeInsets.only(left: 16);
  static const EdgeInsets rightPadding = EdgeInsets.only(right: 16);
}

final class FoodDeliveryViewTextStyle {
  final BuildContext context;

  FoodDeliveryViewTextStyle(this.context);

  TextStyle? get titleLarge =>
      Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: FoodDeliveryViewColors.white,
          );

  TextStyle? get titleMedium =>
      Theme.of(context).textTheme.titleMedium?.copyWith(
            color: FoodDeliveryViewColors.white,
          );

  TextStyle? get bodyLarge => Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: FoodDeliveryViewColors.white,
      );

  TextStyle? get bodyMedium => Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: FoodDeliveryViewColors.white,
      );

  TextStyle? get bodySmall => Theme.of(context).textTheme.bodySmall?.copyWith(
        color: FoodDeliveryViewColors.white,
      );
}
