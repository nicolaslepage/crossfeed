import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rectangle/flutter_radar_chart.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkMode = false;
  bool useSides = false;
  double numberOfFeatures = 6;

  @override
  Widget build(BuildContext context) {
    const ticks = [20, 40, 60, 80];
    var features = ["St", "WL", "Gym", "Mob", "Aero", "End"];
    var data = [
      [50,40,25,10,50,75],
    ];

    features = features.sublist(0, numberOfFeatures.floor());
    data = data
        .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
        .toList();

    return Container(
        width: 200,
        height: 200,
        child : Center(
          child: RadarChart.light(
            ticks: ticks,
            features: features,
            data: data,
            useSides: true,
          ),
        ),
    );
  }
}
