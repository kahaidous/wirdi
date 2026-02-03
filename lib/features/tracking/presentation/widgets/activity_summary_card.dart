import 'package:flutter/material.dart';

class ActivitySummaryCard extends StatelessWidget {
  const ActivitySummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

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
              'Group Overview',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _SummaryMetric(
                  label: 'Students',
                  value: '18',
                  icon: Icons.groups,
                  color: colorScheme.primary,
                ),
                _SummaryMetric(
                  label: 'Active Today',
                  value: '12',
                  icon: Icons.task_alt,
                  color: colorScheme.secondary,
                ),
                _SummaryMetric(
                  label: 'Streak',
                  value: '6 days',
                  icon: Icons.local_fire_department,
                  color: colorScheme.tertiary,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Teacher: Ustadh Mariam · Group: Al-Fajr',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.black54,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryMetric extends StatelessWidget {
  const _SummaryMetric({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  final String label;
  final String value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.12),
          child: Icon(icon, color: color),
        ),
        const SizedBox(height: 8),
        Text(value, style: Theme.of(context).textTheme.titleSmall),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.black54,
              ),
        ),
      ],
    );
  }
}
