import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/constants/app_colors.dart';

class HydrationWidget extends StatelessWidget {
  const HydrationWidget({super.key, required this.value});
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(21),
        decoration: BoxDecoration(
          color: AppColors.activeCard,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: AppColors.primary),
        ),
        child: Column(
          mainAxisSize: .min,
          children: [
            const Icon(Icons.water_drop, color: AppColors.primary, size: 64),
            const SizedBox(height: 21),
            Text(
              '$value L / Day',
              style: const TextStyle(
                color: AppColors.primary,
                fontSize: 32,
                fontWeight: .w700,
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Estimated value',
              style: TextStyle(color: AppColors.secoundaryColors),
            ),
            const SizedBox(height: 12),
            const Text(
              '(educational formal)',
              style: TextStyle(color: AppColors.secoundaryColors),
            ),
          ],
        ),
      ),
    );
  }
}
