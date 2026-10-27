import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/constants/app_colors.dart';

class AgeWeight extends StatelessWidget {
  const AgeWeight({
    super.key,
    required this.age,
    required this.weight,
    required this.ageDecrement,
    required this.ageIncremet,
    required this.weightDecrement,
    required this.weightIncrement,
  });
  final int weight;
  final int age;
  final VoidCallback weightIncrement;
  final VoidCallback weightDecrement;
  final VoidCallback ageIncremet;
  final VoidCallback ageDecrement;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: _Item(
              child: _ItemStructure(
                title: 'WEIGHT (kg)',
                value: weight,
                increment: weightIncrement,
                decrement: weightDecrement,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: _Item(
              child: _ItemStructure(
                title: 'AGE (years)',
                value: age,
                increment: ageIncremet,
                decrement: ageDecrement,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      decoration: BoxDecoration(
        color: AppColors.unActiveColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }
}

class _ItemStructure extends StatelessWidget {
  const _ItemStructure({
    required this.title,
    required this.value,
    required this.decrement,
    required this.increment,
  });
  final String title;
  final int value;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.secoundaryColors,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          value.toString(),
          style: const TextStyle(
            color: AppColors.primaryText,
            fontSize: 46,
            fontWeight: .w800,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            IconButton(
              style: IconButton.styleFrom(
                foregroundColor: AppColors.primaryText,
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: increment,
              icon: const Icon(Icons.add, size: 28),
            ),
            IconButton(
              style: IconButton.styleFrom(
                foregroundColor: AppColors.primaryText,
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: decrement,
              icon: const Icon(Icons.remove, size: 28),
            ),
          ],
        ),
      ],
    );
  }
}
