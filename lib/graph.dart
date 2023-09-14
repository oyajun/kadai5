import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'parameter.dart';

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      graphData(),
    );
  }
}

LineChartData graphData() {
  return LineChartData(
    minY: 0,
    maxY: EVOLTAGE,
    minX: 0,
    maxX: 5,
    lineTouchData: const LineTouchData(enabled: false),
    lineBarsData: [
      LineChartBarData(
        spots: spots0.makeSpots(),
        isCurved: true,
        barWidth: 1,
        color: Colors.red,
      ),
      LineChartBarData(
          spots: spots1.makeSpots(),
          isCurved: true,
          barWidth: 1,
          color: Colors.green,
          dotData: FlDotData(
            getDotPainter: (p0, p1, p2, p3) {
              return FlDotSquarePainter(size: 7, color: Colors.green);
            },
          )),
      LineChartBarData(
        spots: spots2.makeSpots(),
        isCurved: true,
        barWidth: 1,
        color: Colors.blue,
          dotData: FlDotData(
            getDotPainter: (p0, p1, p2, p3) {
              return FlDotCrossPainter(size: 8,color: Colors.blue);
            },
          )
      ),
    ],
    titlesData: const FlTitlesData(
      bottomTitles: AxisTitles(
        axisNameWidget: Text('時間 t　(s)'),
        axisNameSize: 24,
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 24,
        ),
      ),
      leftTitles: AxisTitles(
        axisNameWidget: Text('コンデンサにかかる電圧 v　(V)'),
        axisNameSize: 24,
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 40,
        ),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
        ),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
        ),
      ),
    ),
    gridData: FlGridData(
      show: true,
      //drawHorizontalLine: true,
      getDrawingVerticalLine: (value) {
        return const FlLine(
          color: Colors.grey,
          strokeWidth: 0.5,
        );
      },
      getDrawingHorizontalLine: (value) {
        return const FlLine(
          color: Colors.grey,
          strokeWidth: 0.5,
        );
      },
    ),
  );
}
