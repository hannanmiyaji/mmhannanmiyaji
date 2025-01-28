import 'package:flutter/material.dart';

class TaskStatusSummaryCounterWidget extends StatelessWidget {
  const TaskStatusSummaryCounterWidget({
    super.key,
    required this.count,
    required this.title,
  });

  final String count;
  final String title;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            Text(count, style: textTheme.titleLarge),
            Text(title, style: textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}
