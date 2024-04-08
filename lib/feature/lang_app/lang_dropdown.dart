import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LangDropDown extends StatefulWidget {
  const LangDropDown({super.key});

  @override
  State<LangDropDown> createState() => _LangDropDownState();
}

class _LangDropDownState extends State<LangDropDown> {
  final ValueNotifier<LangAppItem?> _itemNotifier = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _itemNotifier,
      builder: (context, value, child) {
        return DropdownButton<LangAppItem>(
          value: _itemNotifier.value,
          items: LangAppItem.samples.map((e) {
            return DropdownMenuItem(
              value: e,
              child: _DropdownCardItem(e),
            );
          }).toList(),
          onChanged: (value) {
            _itemNotifier.value = value;
          },
        );
      },
    );
  }
}

class _DropdownCardItem extends StatelessWidget {
  const _DropdownCardItem(this.item);
  final LangAppItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Icon(item.icon),
          const SizedBox(
            width: 10,
          ),
          Text(item.title),
        ],
      ),
    );
  }
}

final class LangAppItem extends Equatable {
  const LangAppItem({required this.icon, required this.title});

  final IconData icon;
  final String title;

  static final List<LangAppItem> samples = [
    const LangAppItem(icon: Icons.flag, title: 'French'),
    const LangAppItem(icon: Icons.face, title: 'Turkish'),
  ];

  @override
  List<Object> get props => [icon, title];
}
