import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';

class _BarChart extends StatelessWidget {
  const _BarChart({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        alignment: BarChartAlignment.spaceAround,
        maxY: 7,
      ),
    );
  }

  static const int _min = 34*60+13;
  static const int _max = 7200;
  static int legend1_1 =  ((_min+(_max-_min)*0.05)/60).floor();
  static int legend1_2 = ((_min+(_max-_min)*0.05)%60).floor();
  static int legend2_1 =  ((_min+(_max-_min)*0.25)/60).floor();
  static int legend2_2 = ((_min+(_max-_min)*0.25)%60).floor();
  static int legend3_1 =  ((_min+(_max-_min)*0.5)/60).floor();
  static int legend3_2 = ((_min+(_max-_min)*0.5)%60).floor();
  static int legend4_1 =  ((_min+(_max-_min)*0.75)/60).floor();
  static int legend4_2 = ((_min+(_max-_min)*0.75)%60).floor();
  static int legend5_1 =  (_max/60).floor();
  static int legend5_2 = (_max)%60.floor();

  static String legend1 = legend1_1.toString() + ':' + legend1_2.toString();
  static String legend2 = legend2_1.toString() + ':' + legend2_2.toString();
  static String legend3 = legend3_1.toString() + ':' + legend3_2.toString();
  static String legend4 = legend4_1.toString() + ':' + legend4_2.toString();
  static String legend5 = legend5_1.toString() + ':' + legend5_2.toString();


  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      tooltipBgColor: Colors.transparent,
      tooltipPadding: const EdgeInsets.all(0),
      tooltipMargin: 0,
      getTooltipItem: (
          BarChartGroupData group,
          int groupIndex,
          BarChartRodData rod,
          int rodIndex,
          ) {
        return BarTooltipItem(
          rod.y.round().toString(),
          const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    ),
  );

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: SideTitles(
      showTitles: true,
      getTextStyles: (context, value) => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 10,
      ),
      margin: 5,
      getTitles: (double value) {
        switch (value.toInt()) {
          case 0:
            return legend1;
          case 1:
            return '';
          case 2:
            return '';
          case 3:
            return '';
          case 4:
            return legend2;
          case 5:
            return '';
          case 6:
            return '';
          case 7:
            return '';
          case 8:
            return '';
          case 9:
            return legend3;
          case 10:
            return '';
          case 11:
            return '';
          case 12:
            return '';
          case 13:
            return '';
          case 14:
            return legend4;
          case 15:
            return '';
          case 16:
            return '';
          case 17:
            return '';
          case 18:
            return '';
          case 19:
            return legend5;
          default:
            return '';
        }
      },
    ),
    leftTitles: SideTitles(showTitles: false),
    topTitles: SideTitles(showTitles: false),
    rightTitles: SideTitles(showTitles: false),
  );

  FlBorderData get borderData => FlBorderData(
    show: false,
  );

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(
            y: 0, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
            y: 1, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
            y: 2, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(
            y: 4, colors: [Colors.blueAccent, Colors.greenAccent])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(
            y: 5, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 6,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 7,
      barRods: [
        BarChartRodData(
            y: 7, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 8,
      barRods: [
        BarChartRodData(
            y: 7, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 9,
      barRods: [
        BarChartRodData(
            y: 7, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 10,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 11,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 12,
      barRods: [
        BarChartRodData(
            y: 5, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 13,
      barRods: [
        BarChartRodData(
            y: 5, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 14,
      barRods: [
        BarChartRodData(
            y: 4, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 15,
      barRods: [
        BarChartRodData(
            y: 3, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 16,
      barRods: [
        BarChartRodData(
            y: 2, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 17,
      barRods: [
        BarChartRodData(
            y: 2, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 18,
      barRods: [
        BarChartRodData(
            y: 2, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 19,
      barRods: [
        BarChartRodData(
            y: 1, colors: [Color(0xFF3E2723), Color(0xFFB71c1c)])
      ],
      showingTooltipIndicators: [1],
    ),
  ];
}

class BarChartSample3 extends StatefulWidget {
  const BarChartSample3({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.transparent,
        child: const Padding(
                padding: EdgeInsets.all(10),
                child : _BarChart(),
      ),
    ),
    );
  }
}