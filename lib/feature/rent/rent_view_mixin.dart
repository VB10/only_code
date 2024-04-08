import 'package:flutter/material.dart';
import 'package:only_code/feature/rent/rent_model.dart';
import 'package:only_code/feature/rent/rent_view.dart';

enum StatusTabItems { home, filter, favroite, shop }

mixin RentViewMixin on State<RentView> {
  late final List<RentModel> _rentItemsDummy;

  List<RentModel> get rentItems => _rentItemsDummy;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _rentItemsDummy = List.generate(20, (index) {
      return RentModel(
          title: 'Title $index',
          subTitle: 'SubTitle $index',
          price: 1000,
          imageUrl: 'https://picsum.photos/200/300');
    });
  }
}
