// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'category.dart';

final _backgroundColor = Colors.brown[50];

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute({Key? key}) : super(key: key);

  static const _categoryNames = <String>[
    'Martin Btx',
    'Nicolas Lepage',
    'Ugo Pelissier',
    'Mathis Egnell',
    'Gabriele Dabbaghian',
    'Hanane El Hajji',
    'Raphael Toledano',
  ];

  static const _categoryWorkoutname = <String>[
    'Murph:\n',
    'Fran:\n',
    'Annie:\n',
    'Kalsu:\n',
    'Grace: \n',
    'Jerry: \n',
    'Chelsea: \n',
  ];

  static const _categoryWorkouttype = <String>[
    'For Time\n',
    'For Time\n',
    'For Time\n',
    'For Time\n',
    'For Time\n',
    'For Time\n',
    'EMOM 30min\n',
  ];

  static const _categoryWorkoutmouvements = <String>[

    "1 mile run\n"
    "100 pull-ups\n"
    "200 push-ups\n"
    "300 squats\n"
    "1 mile run",

    "21-15-9\n"
    "Thrusters\n"
    "Pull-ups",

    "50-40-30-20-10\n"
    "Double unders\n"
    "Sit-ups",

    "100 Thrusters\n"
    "EMOM: 5 burpees",

    '30 Ground to overhead',

    "Run 1 Mile\n"
    "Row 2K\n"
    "Run 1 Mile",

    "5 Pull-ups\n"
    "10 Push-ups\n"
    "15 Squats",
  ];

  static const _categoryscore = <String>[
    '00:32:15',
    '00:04:45',
    '00:15:18',
    '00:28:05',
    '00:07:08',
    '00:29:12',
    '26 Rounds',
  ];

  static const _categoryweight = <String>[
    'Scaled',
    'RX',
    'Scaled',
    'RX',
    'Scaled',
    'RX',
    'Scaled',
  ];

  static const _categoryrank = <String>[
    '999th',
    '1st ;)',
    '200th',
    '12th',
    '19th',
    '327th',
    '512th',
  ];

  /// Makes the correct number of rows for the list view.
  ///
  /// For portrait, we construct a [ListView] from the list of category widgets.
  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        name: _categoryNames[i],
        workout: _categoryWorkoutname[i],
        workouttype: _categoryWorkouttype[i],
        mouvements: _categoryWorkoutmouvements[i],
        score: _categoryscore[i],
        weight: _categoryweight[i],
        rank: _categoryrank[i],
        iconLocation: Icons.account_circle_outlined,
      ));
    }

    final listView = Container(
      color: _backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: _buildCategoryWidgets(categories),
    );

    final appBar = AppBar(
        elevation: 0.0,
        title: RichText(
          text: TextSpan(
            text: 'Cross',
            style: TextStyle(fontSize: 30, color: Colors.red.shade900, fontWeight: FontWeight.bold),
            children: const <TextSpan>[
              TextSpan(text: '/', style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: 'Feed', style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        backgroundColor: Colors.brown[50],);

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
