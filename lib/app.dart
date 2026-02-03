import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/tracking/presentation/tracking_screen.dart';

class TrackingApp extends StatelessWidget {
  const TrackingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracking App',
      theme: AppTheme.lightTheme,
      home: const TrackingScreen(),
    );
  }
}
