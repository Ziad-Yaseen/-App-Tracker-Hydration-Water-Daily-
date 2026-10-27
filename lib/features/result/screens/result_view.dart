import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/helpers/water_calc.dart';
import 'package:water_hydration_tracker/features/result/widgets/guidance_widget.dart';
import 'package:water_hydration_tracker/features/result/widgets/hydration_widget.dart';
import 'package:water_hydration_tracker/features/result/widgets/just_education.dart';
import 'package:water_hydration_tracker/features/result/widgets/user_infos.dart';

class ResultView extends StatelessWidget {
  const ResultView({
    super.key,
    required this.activity,
    required this.wieght,
    required this.age,
  });
  final int wieght;
  final int activity;
  final int age;

  @override
  Widget build(BuildContext context) {
    final result = WaterCalc.calcWater(wieght, activity);
    final String guidance = result < 2
        ? 'A relatively low estimate within this educational equation. You can distribute your water intake throughout the day.'
        : result <= 3
        ? 'An average estimate within this educational equation. Try to distribute drinking at intervals throughout the day.'
        : 'A relatively high estimate due to weight or hours of activity. Actual needs vary from one person to another, and you can consult a specialist if needed.';
    return Scaffold(
      appBar: AppBar(title: const Text('Your Daily Water Intake')),
      body: Column(
        children: [
          const Spacer(flex: 2),
          HydrationWidget(value: result),
          const Spacer(),
          const JustEducation(),
          const Spacer(),
          GuidanceWidget(text: guidance),
          const Spacer(),
          UserInfos(age: age, weight: wieght, hours: activity),
          const Spacer(flex: 2),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Re-calculate'),
          ),
        ],
      ),
    );
  }
}
