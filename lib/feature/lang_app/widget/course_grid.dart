import 'package:flutter/material.dart';

class CourseGrid extends StatelessWidget {
  const CourseGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      children: _GridItem.examples.map(_GridCard.new).toList(),
    );
  }
}

class _GridCard extends StatelessWidget {
  const _GridCard(this.item);
  final _GridItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: item.color.withOpacity(0.1),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 2),
              Icon(item.icon, color: item.color),
              const Spacer(),
              Text(item.title, style: Theme.of(context).textTheme.titleLarge),
              const Spacer(),
              Text(item.subTitle),
              const Spacer(),
              LinearProgressIndicator(
                value: item.progress,
                color: item.color,
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

class _GridItem {
  _GridItem({
    required this.color,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.progress,
  });

  final Color color;
  final IconData icon;
  final String title;
  final String subTitle;
  final double progress;

  static final List<_GridItem> examples = [
    _GridItem(
      color: Colors.purple,
      icon: Icons.book_outlined,
      title: 'Reading',
      subTitle: 'Your Progress 41%',
      progress: 0.41,
    ),
    _GridItem(
      color: Colors.blue,
      icon: Icons.outbound_outlined,
      title: 'Reading',
      subTitle: 'Your Progress 2%',
      progress: 0.2,
    ),
    _GridItem(
      color: Colors.green,
      icon: Icons.outlined_flag,
      title: 'Reading',
      subTitle: 'Your Progress 50%',
      progress: 0.5,
    ),
    _GridItem(
      color: Colors.orange,
      icon: Icons.outlet_outlined,
      title: 'Reading',
      subTitle: 'Your Progress 60%',
      progress: 0.6,
    ),
  ];
}
