import 'package:flutter/material.dart';
import 'package:only_code/feature/rent/rent_model.dart';
import 'package:only_code/feature/rent/view/project_padding.dart';
import 'package:only_code/feature/rent/view/project_radius.dart';

class RentCard extends StatelessWidget {
  const RentCard({super.key, required this.model});
  final RentModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ClipRRect(
          borderRadius: ProjectRadius.borderRadius20,
          child: Image.network(
            model.imageUrl,
            fit: BoxFit.cover,
          ),
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(left: ProjectPadding.padding8.left),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              Text(model.subTitle),
              const Spacer(),
              Row(
                children: [
                  const Icon(Icons.attach_money),
                  Text(model.price.toString()),
                  const Spacer(),
                  const Text('Random')
                ],
              ),
            ],
          ),
        ))
      ],
    );
  }
}
