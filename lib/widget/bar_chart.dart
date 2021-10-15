import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _BarChart extends StatelessWidget {
  const _BarChart({Key? key}) : super(key: key);

  static const int _min = 34*60+13;
  static const int _max = 7200;

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

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      tooltipBgColor: Colors.transparent,
      tooltipPadding: const EdgeInsets.all(0),
      tooltipMargin: 8,
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
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      margin: 20,
      getTitles: (double value) {
        switch (value.toInt()) {
          case 0:
            return (_min+(_max-_min)*0.05).toString();
          case 1:
            return '';
          case 2:
            return '';
          case 3:
            return '';
          case 4:
            return (_min+(_max-_min)*0.25).toString();
          case 5:
            return '';
          case 6:
            return '';
          case 7:
            return '';
          case 8:
            return '';
          case 9:
            return (_min+(_max-_min)*0.5).toString();
          case 10:
            return '';
          case 11:
            return '';
          case 12:
            return '';
          case 13:
            return '';
          case 14:
            return (_min+(_max-_min)*0.75).toString();
          case 15:
            return '';
          case 16:
            return '';
          case 17:
            return '';
          case 18:
            return '';
          case 19:
            return (_min+(_max-_min)*1).toString();
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
            y: 1, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
            y: 2, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
            y: 3, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(
            y: 4, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(
            y: 5, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 6,
      barRods: [
        BarChartRodData(
            y: 7, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 7,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 8,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 9,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 10,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 11,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 12,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 13,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 14,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 15,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 16,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 17,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 18,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
      ],
      showingTooltipIndicators: [1],
    ),
    BarChartGroupData(
      x: 19,
      barRods: [
        BarChartRodData(
            y: 6, colors: [Colors.brown, Colors.red])
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
      aspectRatio: 1.7,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: Colors.brown[100],
        child: const _BarChart(),
      ),
    );
  }
}