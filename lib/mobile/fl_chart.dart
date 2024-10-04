
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlChart { // Renamed to avoid conflict
  static Widget flChart(BuildContext context) {
    bool isBoldText = MediaQuery.of(context).boldText;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 270,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              minY: -1,
              maxY: 10001,
              barTouchData: BarTouchData(enabled: false),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value, TitleMeta meta) {
                     final style = TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        fontFamily: readexPro,
                      );
                      Widget text;
                      switch (value.toInt()) {
                        case 0:
                          text =  Text('Jan', style: style);
                          break;
                        case 1:
                          text =  Text('Feb', style: style);
                          break;
                        case 2:
                          text =  Text('Mar', style: style);
                          break;
                        case 3:
                          text =  Text('Apr', style: style);
                          break;
                        case 4:
                          text =  Text('May', style: style);
                          break;
                        case 5:
                          text =  Text('Jun', style: style);
                          break;
                        case 6:
                          text =  Text('Jul', style: style);
                          break;
                        case 7:
                          text =  Text('Aug', style: style);
                          break;
                        case 8:
                          text =  Text('Sep', style: style);
                          break;
                        default:
                          text =  Text('', style: style);
                          break;
                      }
                      return SideTitleWidget(axisSide: meta.axisSide, child: text);
                    },
                    reservedSize: 28,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 2500,
                    reservedSize: 45,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return Text(
                        '\$${formatWithCommas(value.toInt())}',
                        style: TextStyle(
                          fontWeight: isBoldText ? FontWeight.bold : FontWeight.w400,
                          fontSize: 11,
                          fontFamily: readexPro,
                        ),
                      );
                    },
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                horizontalInterval: 2500,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: greyColor.withOpacity(0.5),
                    strokeWidth: 1,
                  );
                },
              ),
              borderData: FlBorderData(show: false),
              barGroups: [
                BarChartGroupData(
                  x: 0,
                  barRods: [
                    BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 2500,
                      color: color,
                      width: 16,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 5000,
                      color: color,
                      width: 16,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 2,
                  barRods: [
                    BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 7500,
                      color: color,
                      width: 16,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 3,
                  barRods: [
                    BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 2000,
                      color: color,
                      width: 16,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 4,
                  barRods: [
                    BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 5000,
                      color: color,
                      width: 16,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 5,
                  barRods: [
                    BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 7500,
                      color: color,
                      width: 16,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 6,
                  barRods: [
                    BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 2000,
                      color: color,
                      width: 16,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 7,
                  barRods: [
                    BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 5000,
                      color: color,
                      width: 16,
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 8,
                  barRods: [
                    BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 2000,
                      color: color,
                      width: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String formatWithCommas(int value) {
  final stringValue = value.toString();
  final buffer = StringBuffer();

  for (int i = 0; i < stringValue.length; i++) {
    if (i != 0 && (stringValue.length - i) % 3 == 0) {
      buffer.write(',');
    }
    buffer.write(stringValue[i]);
  }

  return buffer.toString();
}
