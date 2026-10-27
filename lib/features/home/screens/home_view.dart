import 'package:flutter/material.dart';
import 'package:water_hydration_tracker/core/components/custom_snack_bar.dart';
import 'package:water_hydration_tracker/core/constants/app_colors.dart';
import 'package:water_hydration_tracker/features/home/widgets/activity_slider.dart';
import 'package:water_hydration_tracker/features/home/widgets/age_weight.dart';
import 'package:water_hydration_tracker/features/home/widgets/gender_row.dart';
import 'package:water_hydration_tracker/features/result/screens/result_view.dart';

enum GenderType { none, male, female }

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedAge = 20;
  int selectedWeight = 60;
  int selectedActiveHours = 2;
  GenderType selectedGender = GenderType.none;

  void _incrementAge() {
    if (selectedAge >= 100) return;
    setState(() {
      selectedAge++;
    });
  }

  void _decrementAge() {
    if (selectedAge <= 10) return;
    setState(() {
      selectedAge--;
    });
  }

  void _incrementWeight() {
    if (selectedWeight >= 200) return;
    setState(() {
      selectedWeight++;
    });
  }

  void _decrementWeight() {
    if (selectedWeight <= 30) return;
    setState(() {
      selectedWeight--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Tracker'),
        leading: const Icon(
          Icons.water_drop,
          color: AppColors.primary,
          size: 24,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            GenderRow(
              gender: selectedGender,
              onFemaleTap: () {
                setState(() {
                  selectedGender = GenderType.female;
                });
              },
              onMaleTap: () {
                setState(() {
                  selectedGender = GenderType.male;
                });
              },
            ),
            const Spacer(),
            ActivitySlider(
              sliderValue: selectedActiveHours.toDouble(),
              onSliderValueChanged: (p0) {
                setState(() {
                  selectedActiveHours = p0.toInt();
                });
              },
            ),
            const Spacer(flex: 2),
            AgeWeight(
              weight: selectedWeight,
              age: selectedAge,
              ageIncremet: _incrementAge,
              ageDecrement: _decrementAge,
              weightDecrement: _decrementWeight,
              weightIncrement: _incrementWeight,
            ),
            const Spacer(flex: 4),
            FilledButton(
              onPressed: () => selectedGender == GenderType.none
                  ? CustomSnackBar.show(
                      context: context,
                      message: 'Please select a gender',
                    )
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultView(
                          activity: selectedActiveHours,
                          wieght: selectedWeight,
                          age: selectedAge,
                        ),
                      ),
                    ),
              child: const Text('Calculate Water Intake'),
            ),
          ],
        ),
      ),
    );
  }
}
