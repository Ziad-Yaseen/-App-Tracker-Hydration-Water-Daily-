import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/constants/app_colors.dart';

class GuidanceWidget extends StatelessWidget {
  const GuidanceWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 21, horizontal: 64),
        decoration: BoxDecoration(
          color: AppColors.activeCard,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          text,
          textAlign: .center,
          style: const TextStyle(color: AppColors.primaryText, fontSize: 18),
        ),
      ),
    );
  }
}
