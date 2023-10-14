import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'parameter.dart';

class Spots {
  late bool isExactSolution;
  late double eVoltage;
  late double deltaT;
  late double register;
  late double capacitor;
  late double tau;

  late String information;

  Spots(
    this.isExactSolution,
    this.eVoltage,
    this.deltaT,
    this.register,
    this.capacitor,
  ) {
    tau = register * capacitor;

    late String title;
    if (isExactSolution) {
      title = "厳密解　　";
    } else {
      title = "オイラー法";
    }
    information = "$title　　ΔT=$deltaT　R=$register　C=$capacitor　τ=$tau(RxC)";
  }

  List<FlSpot> makeSpots() {
    late List<FlSpot> spots;
    if (isExactSolution) {
      spots = _makeSpotsExactSolution();
    } else {
      spots = _makeSpotsEuler();
    }
    return spots;
  }

  List<FlSpot> _makeSpotsExactSolution() {
    double t = 0.0;
    double v = 0.0;
    double v0 = v;
    List<FlSpot> spots = [FlSpot(t, v)];

    while (!(t > MAXTIME)) {
      t += deltaT;
      v = eVoltage * (1 - exp(-t / tau)) + v0 * exp(-t / tau);
      spots.add(FlSpot(t, v));
    }
    return spots;
  }

  List<FlSpot> _makeSpotsEuler() {
    double t = 0.0;
    double v = 0.0;
    List<FlSpot> spots = [FlSpot(t, v)];

    while (!(t > MAXTIME)) {
      t += deltaT;
      v = (eVoltage - v) * deltaT / tau + v;
      spots.add(FlSpot(t, v));
    }
    return spots;
  }
}
