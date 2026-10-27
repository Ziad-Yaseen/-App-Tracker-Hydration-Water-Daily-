import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/constants/app_colors.dart';
import 'package:water_hydration_tracker/features/home/screens/home_view.dart';

class GenderRow extends StatelessWidget {
  const GenderRow({
    super.key,
    required this.gender,
    required this.onFemaleTap,
    required this.onMaleTap,
  });
  final GenderType gender;
  final VoidCallback onMaleTap;
  final VoidCallback onFemaleTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: _GenderCard(
              isActive: gender == GenderType.male,
              onTap: onMaleTap,
              child: _GenderItem(
                gender: GenderType.male,
                isActive: gender == GenderType.male,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: _GenderCard(
              isActive: gender == GenderType.female,
              onTap: onFemaleTap,
              child: _GenderItem(
                gender: GenderType.female,
                isActive: gender == GenderType.female,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GenderCard extends StatelessWidget {
  const _GenderCard({
    required this.isActive,
    required this.child,
    required this.onTap,
  });
  final bool isActive;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 28),
        decoration: BoxDecoration(
          color: isActive ? AppColors.activeCard : AppColors.unActiveColor,
          border: isActive ? Border.all(color: AppColors.primary) : null,
          borderRadius: BorderRadius.circular(24),
        ),
        child: child,
      ),
    );
  }
}

class _GenderItem extends StatelessWidget {
  const _GenderItem({required this.gender, required this.isActive});
  final bool isActive;
  final GenderType gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isActive ? AppColors.primary : AppColors.secoundaryColors,
            ),
          ),
          child: Text(
            gender == GenderType.male ? 'M' : 'F',
            style: TextStyle(
              fontSize: 22,
              color: isActive ? AppColors.primary : AppColors.secoundaryColors,
              fontWeight: .w600,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          gender == GenderType.male
              ? 'Male'.toUpperCase()
              : 'Female'.toUpperCase(),

          style: TextStyle(
            fontSize: 18,
            color: isActive
                ? AppColors.primaryText
                : AppColors.secoundaryColors,
            fontWeight: .w800,
          ),
        ),
      ],
    );
  }
}
