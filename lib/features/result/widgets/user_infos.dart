import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/constants/app_colors.dart';

class UserInfos extends StatelessWidget {
  const UserInfos({
    super.key,
    required this.age,
    required this.hours,
    required this.weight,
  });
  final int weight;
  final int age;
  final int hours;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 21),
        decoration: BoxDecoration(
          color: AppColors.unActiveColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          crossAxisAlignment: .start,
          mainAxisAlignment: .spaceAround,
          children: [
            Text(
              'Weight: $weight kg\nAge: $age years',
              textAlign: .center,
              style: const TextStyle(
                color: AppColors.primaryText,
                fontSize: 18,
              ),
            ),
            Text(
              'Activity: $hours h',
              textAlign: .center,
              style: const TextStyle(
                color: AppColors.primaryText,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
