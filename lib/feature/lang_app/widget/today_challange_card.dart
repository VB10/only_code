// ignore_for_file: unused_element

part of '../lang_app_view.dart';

final class TodayItemCard {
  const TodayItemCard({
    required this.title,
    required this.description,
    required this.hint,
  });

  final String title;
  final String description;
  final String hint;

  static const example = TodayItemCard(
    title: "Today's Challenge",
    description: 'Take this lesson to earn new milestone',
    hint: 'Tap to Start',
  );
}

class _TodaysChallenge extends StatelessWidget {
  const _TodaysChallenge({super.key, this.item = TodayItemCard.example});

  final TodayItemCard item;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: CustomDecoration(),
      child: Padding(
        padding: _PagePadding.allNormal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.5,
              child: Chip(
                label: Text(
                  item.hint,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.surface,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Padding(
              padding: _PagePadding.verticalLow,
              child: Text(
                item.title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Row(
              children: [
                const Icon(Icons.money_outlined, color: Colors.yellow),
                Expanded(
                  child: Padding(
                    padding: _PagePadding.onlyLeft,
                    child: Text(
                      item.description,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: _PagePadding.verticalLow,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.surface,
                ),
                onPressed: () {},
                child: const Text('Tap to Start'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
