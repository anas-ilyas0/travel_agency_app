import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardLeadsChart {
  Widget dashboardLeadsChart() {
    return AspectRatio(
      aspectRatio: 1.4,
      child: PieChart(
        PieChartData(
          startDegreeOffset: -100,
          // pieTouchData: PieTouchData(
          //   touchCallback: (FlTouchEvent event, pieTouchResponse) {
          //     //
          //     //   if (!event.isInterestedForInteractions ||
          //     //       pieTouchResponse == null ||
          //     //       pieTouchResponse.touchedSection == null) {
          //     //     touchedIndex = -1;
          //     //     return;
          //     //   }
          //     //   touchedIndex = pieTouchResponse
          //     //       .touchedSection!.touchedSectionIndex;
          //     // });
          //   },
          // ),
          // borderData: FlBorderData(
          //   show: true,
          // ),
          sectionsSpace: 0,
          centerSpaceRadius: 60,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      //final isTouched = i == touchedIndex;
      //final fontSize = isTouched ? 25.0 : 16.0;
      //final radius = isTouched ? 60.0 : 50.0;
      //const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: color,
            value: 20,
            title: '20%',
            radius: 50,
            titleStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: whiteColor,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: addLeadButtonColor,
            value: 60,
            title: '60%',
            radius: 50,
            titleStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: whiteColor,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
