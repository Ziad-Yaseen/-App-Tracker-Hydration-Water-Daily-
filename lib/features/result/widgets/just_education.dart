import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/constants/app_colors.dart';

class JustEducation extends StatelessWidget {
  const JustEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 21, horizontal: 64),
        decoration: BoxDecoration(
          color: AppColors.unActiveColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          'Educational estimate only — not medical advice',
          textAlign: .center,
          style: TextStyle(color: AppColors.secoundaryColors, fontSize: 18),
        ),
      ),
    );
  }
}
