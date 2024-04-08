import 'package:flutter/material.dart';
import 'package:only_code/feature/rent/rent_model.dart';
import 'package:only_code/feature/rent/rent_view_mixin.dart';
import 'package:only_code/feature/rent/view/project_padding.dart';
import 'package:only_code/feature/rent/view/rent_card.dart';
import 'package:only_code/feature/rent/widget/outline_style.dart';

part './view/rent_view_items.dart';

class RentView extends StatefulWidget {
  const RentView({Key? key}) : super(key: key);
  @override
  State<RentView> createState() => _RentViewState();
}

class _RentViewState extends State<RentView> with RentViewMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: StatusTabItems.values.length,
      child: Scaffold(
        appBar: const _AppBar(),
        bottomNavigationBar: const _BottomBar(),
        body: ListView.separated(
          padding: ProjectPadding.padding20,
          separatorBuilder: (context, index) => const _CustomDivider(),
          itemCount: rentItems.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
              child: RentCard(model: rentItems[index]),
            );
          },
        ),
      ),
    );
  }
}

class _CustomDivider extends StatelessWidget {
  const _CustomDivider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ProjectPadding.padding20.bottom),
      child: const Divider(
        height: 2,
        thickness: 2,
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: TabBar(
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black26,
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.filter_alt)),
            Tab(icon: Icon(Icons.favorite)),
            Tab(icon: Icon(Icons.shopping_cart)),
          ]),
    );
  }
}
