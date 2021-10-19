// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

import 'model/workout.dart';
import 'widget/bar_chart.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class workout_description_route extends StatelessWidget {
  final Workout given_wod;

  const workout_description_route({
    Key? key,
    required this.given_wod,
  }) : super(key: key);

  Widget buildUpgradeButton() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      for(var item in given_wod.cat ) Padding(
      padding: const EdgeInsets.all(5.0),
      child:ElevatedButton(
          style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Color(0xFFEE293A),
          onPrimary: Color(0xFF2D1A45),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text(item),
        onPressed: () {},
      ),
      ),
  ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Color(0xFF2D1A45), //change your color here
      ),
      title: RichText(
        text: const TextSpan(
          text: 'Cross',
          style: TextStyle(
              fontSize: 30,
              color: Color(0xFFEE293A),
              fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(
                text: '/',
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF2D1A45),
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Feed',
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF54C1A2),
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    ),
      body: Column(
        children : [
          Center(
            child :Container(
              color: Colors.transparent,
              child : Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: given_wod.name + '\n',
                      style: const TextStyle(fontSize: 30, color: Color(0xFF2D1A45), fontWeight: FontWeight.bold),
                      children:  <TextSpan>[
                        TextSpan(text: given_wod.type1, style: const TextStyle(fontSize: 20, color: Color(0xFF2D1A45), fontWeight: FontWeight.bold)),
                        TextSpan(text: given_wod.mouvements, style: const TextStyle(fontSize: 20, color: Color(0xFF2D1A45), fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding : const EdgeInsets.symmetric(vertical:5.0),
            child :buildUpgradeButton(),
          ),
          Center(
            child :Container(
              color: Colors.transparent,
              child : Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Your Score : ',
                      style: TextStyle(fontSize: 20, color: Color(0xFF2D1A45), fontWeight: FontWeight.bold),
                      children:  <TextSpan>[
                        TextSpan(text: ' 45:32', style: TextStyle(fontSize: 20, color: Color(0xFF2D1A45), fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child :Container(
              color: Colors.transparent,
              child : Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Your Rank : ',
                      style: TextStyle(fontSize: 20, color: Color(0xFF2D1A45), fontWeight: FontWeight.bold),
                      children:  <TextSpan>[
                        TextSpan(text: ' %10th - 1754th', style: TextStyle(fontSize: 20, color: Color(0xFF2D1A45), fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const BarChartSample3(),
        ]
      )
    );
  }
}
