import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/styles/app_them.dart';
import 'package:water_hydration_tracker/features/home/screens/home_view.dart';

class WaterHydrationTracker extends StatelessWidget {
  const WaterHydrationTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThem.dark,
      home: const HomeView(),
    );
  }
}
