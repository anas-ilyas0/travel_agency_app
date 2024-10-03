// import 'package:fab_tech_sol/consts/consts.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// class FlChart {
//   static flChart() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Container(
//         width: double.infinity,
//         height: 300,
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: whiteColor,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 15),
//           child: BarChart(
//             BarChartData(
//               alignment: BarChartAlignment.spaceAround,
//               maxY: 10001,
//               barTouchData: BarTouchData(enabled: false),
//               titlesData: FlTitlesData(
//                 show: true,
//                 bottomTitles: SideTitles(
//                   showTitles: true,
//                   getTitles: (double value) {
//                     switch (value.toInt()) {
//                       case 0:
//                         return 'Jan';
//                       case 1:
//                         return 'Feb';
//                       case 2:
//                         return 'Mar';
//                       case 3:
//                         return 'Apr';
//                       case 4:
//                         return 'May';
//                       case 5:
//                         return 'Jun';
//                       case 6:
//                         return 'Jul';
//                       case 7:
//                         return 'Aug';
//                       case 8:
//                         return 'Sep';
//                       default:
//                         return '';
//                     }
//                   },
//                   margin: 8,
//                   getTextStyles: (context, value) => TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 11,
//                       fontFamily: readexPro),
//                 ),
//                 leftTitles: SideTitles(
//                   interval: 2500,
//                   reservedSize: 46,
//                   showTitles: true,
//                   getTitles: (double value) {
//                     return '\$${formatWithCommas(value.toInt())}';
//                   },
//                   getTextStyles: (context, value) => TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 11,
//                       fontFamily: readexPro),
//                 ),
//                 topTitles: SideTitles(
//                   showTitles: false,
//                 ),
//                 rightTitles: SideTitles(
//                   showTitles: false,
//                 ),
//               ),
//               gridData: FlGridData(
//                 show: true,
//                 drawVerticalLine: false,
//                 horizontalInterval: 2500,
//                 getDrawingHorizontalLine: (value) {
//                   return FlLine(
//                     color: greyColor.withOpacity(0.5),
//                     strokeWidth: 1,
//                   );
//                 },
//               ),
//               borderData: FlBorderData(show: false),
//               barGroups: [
//                 BarChartGroupData(
//                   x: 0,
//                   barRods: [
//                     BarChartRodData(
//                         borderRadius: BorderRadius.circular(0),
//                         y: 2500,
//                         colors: [color],
//                         width: 16)
//                   ],
//                 ),
//                 BarChartGroupData(
//                   x: 1,
//                   barRods: [
//                     BarChartRodData(
//                         borderRadius: BorderRadius.circular(0),
//                         y: 5000,
//                         colors: [color],
//                         width: 16)
//                   ],
//                 ),
//                 BarChartGroupData(
//                   x: 2,
//                   barRods: [
//                     BarChartRodData(
//                         borderRadius: BorderRadius.circular(0),
//                         y: 7500,
//                         colors: [color],
//                         width: 16)
//                   ],
//                 ),
//                 BarChartGroupData(
//                   x: 3,
//                   barRods: [
//                     BarChartRodData(
//                         borderRadius: BorderRadius.circular(0),
//                         y: 2000,
//                         colors: [color],
//                         width: 16)
//                   ],
//                 ),
//                 BarChartGroupData(
//                   x: 4,
//                   barRods: [
//                     BarChartRodData(
//                         borderRadius: BorderRadius.circular(0),
//                         y: 5000,
//                         colors: [color],
//                         width: 16)
//                   ],
//                 ),
//                 BarChartGroupData(
//                   x: 5,
//                   barRods: [
//                     BarChartRodData(
//                         borderRadius: BorderRadius.circular(0),
//                         y: 7500,
//                         colors: [color],
//                         width: 16)
//                   ],
//                 ),
//                 BarChartGroupData(
//                   x: 6,
//                   barRods: [
//                     BarChartRodData(
//                         borderRadius: BorderRadius.circular(0),
//                         y: 2000,
//                         colors: [color],
//                         width: 16)
//                   ],
//                 ),
//                 BarChartGroupData(
//                   x: 7,
//                   barRods: [
//                     BarChartRodData(
//                         borderRadius: BorderRadius.circular(0),
//                         y: 5000,
//                         colors: [color],
//                         width: 16)
//                   ],
//                 ),
//                 BarChartGroupData(
//                   x: 8,
//                   barRods: [
//                     BarChartRodData(
//                         borderRadius: BorderRadius.circular(0),
//                         y: 2000,
//                         colors: [color],
//                         width: 16)
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// String formatWithCommas(int value) {
//   final stringValue = value.toString();
//   final buffer = StringBuffer();
//   for (int i = 0; i < stringValue.length; i++) {
//     if (i != 0 && (stringValue.length - i) % 3 == 0) {
//       buffer.write(',');
//     }
//     buffer.write(stringValue[i]);
//   }
//   return buffer.toString();
// }
