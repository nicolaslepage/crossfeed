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
    'Hanane El Hadjji',
    'Raphael Toledano',
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
          text: const TextSpan(
            text: 'Cross',
            style: TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
            children: <TextSpan>[
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
