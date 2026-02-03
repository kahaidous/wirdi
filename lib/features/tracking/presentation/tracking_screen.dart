import 'package:flutter/material.dart';

import 'widgets/activity_summary_card.dart';
import 'widgets/trip_timeline_card.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Today\'s Tracking'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ActivitySummaryCard(),
          SizedBox(height: 16),
          TripTimelineCard(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.play_arrow),
        label: const Text('Start Tracking'),
      ),
    );
  }
}
