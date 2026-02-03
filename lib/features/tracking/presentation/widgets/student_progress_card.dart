import 'package:flutter/material.dart';

class StudentProgressCard extends StatelessWidget {
  const StudentProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Student Progress',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            const _StudentProgressRow(
              name: 'Aisha H.',
              status: 'Completed · 8:10 AM',
              progress: 1,
            ),
            const Divider(height: 24),
            const _StudentProgressRow(
              name: 'Omar K.',
              status: 'In progress · 60%',
              progress: 0.6,
            ),
            const Divider(height: 24),
            const _StudentProgressRow(
              name: 'Fatimah R.',
              status: 'Pending · Reminder sent',
              progress: 0.2,
            ),
          ],
        ),
      ),
    );
  }
}

class _StudentProgressRow extends StatelessWidget {
  const _StudentProgressRow({
    required this.name,
    required this.status,
    required this.progress,
  });

  final String name;
  final String status;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final progressColor = progress >= 1
        ? colorScheme.primary
        : progress >= 0.5
            ? colorScheme.secondary
            : colorScheme.tertiary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: progressColor.withOpacity(0.12),
              child: Text(
                name.characters.first,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: progressColor,
                    ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(height: 4),
                  Text(
                    status,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.black54,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: LinearProgressIndicator(
            minHeight: 6,
            value: progress,
            backgroundColor: Colors.black12,
            valueColor: AlwaysStoppedAnimation<Color>(progressColor),
          ),
        ),
      ],
    );
  }
}
