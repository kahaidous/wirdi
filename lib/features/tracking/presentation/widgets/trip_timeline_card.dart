import 'package:flutter/material.dart';

class TripTimelineCard extends StatelessWidget {
  const TripTimelineCard({super.key});

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
              'Today\'s Wird',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            const _TimelineRow(
              icon: Icons.menu_book,
              title: 'Surah Al-Baqarah',
              subtitle: 'Verses 1–25 · Reviewed after Fajr',
            ),
            const Divider(height: 24),
            const _TimelineRow(
              icon: Icons.repeat,
              title: 'Revision Target',
              subtitle: '2 full repetitions · Tajweed focus',
            ),
            const Divider(height: 24),
            const _TimelineRow(
              icon: Icons.notifications_active,
              title: 'Next Reminder',
              subtitle: 'Maghrib check-in at 6:30 PM',
            ),
          ],
        ),
      ),
    );
  }
}

class _TimelineRow extends StatelessWidget {
  const _TimelineRow({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 28, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.black54,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
