import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeflChart extends StatefulWidget {
  const IncomeflChart({super.key});

  @override
  State<IncomeflChart> createState() => _IncomeflChartState();
}

int activeIndex = -1;

class _IncomeflChartState extends State<IncomeflChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          touchCallback: (p0, p1) {
            activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            radius: activeIndex == 0 ? 40 : 30,
            color: const Color(0xff208BC7),
            value: 40,
            showTitle: false,
          ),
          PieChartSectionData(
            radius: activeIndex == 1 ? 40 : 30,
            color: const Color(0xff4DB7F2),
            value: 25,
            showTitle: false,
          ),
          PieChartSectionData(
            radius: activeIndex == 2 ? 40 : 30,
            color: const Color(0xff064060),
            value: 20,
            showTitle: false,
          ),
          PieChartSectionData(
            radius: activeIndex == 3 ? 40 : 30,
            color: const Color(0xffE2DECD),
            value: 22,
            showTitle: false,
          ),
        ]);
  }
}
