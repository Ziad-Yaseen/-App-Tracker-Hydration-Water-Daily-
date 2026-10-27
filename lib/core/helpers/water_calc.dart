class WaterCalc {
  static double calcWater(int weight, int hours) {
    final baseMl = weight * 35;
    final activityMl = hours * 250;
    final totalMl = baseMl + activityMl;
    final litres = totalMl / 1000;
    return litres;
  }
}
