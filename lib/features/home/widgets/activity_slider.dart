import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/constants/app_colors.dart';

class ActivitySlider extends StatelessWidget {
  const ActivitySlider({
    super.key,
    required this.sliderValue,
    required this.onSliderValueChanged,
  });
  final double sliderValue;
  final Function(double)? onSliderValueChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        decoration: BoxDecoration(
          color: AppColors.unActiveColor,
          borderRadius: BorderRadius.circular(24),
        ),

        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                const Text(
                  'ACTIVITY (hours/day)',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.secoundaryColors,
                  ),
                ),
                Text(
                  '${sliderValue.toInt()} h',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: .w800,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Slider(
              activeColor: AppColors.primary,
              inactiveColor: AppColors.secoundaryColors,
              padding: EdgeInsets.zero,
              value: sliderValue,
              onChanged: onSliderValueChanged,
              min: 0,
              max: 8,
            ),
            const Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  '0',
                  style: TextStyle(
                    color: AppColors.secoundaryColors,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '8',
                  style: TextStyle(
                    color: AppColors.secoundaryColors,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
