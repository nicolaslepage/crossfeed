// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

import 'model/workout.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: RichText(
          text: TextSpan(
            text: 'Cross',
            style: TextStyle(
                fontSize: 30,
                color: Colors.red.shade900,
                fontWeight: FontWeight.bold),
            children: const <TextSpan>[
              TextSpan(
                  text: '/',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Feed',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        backgroundColor: Colors.brown[50],
      ),
      body: Center(
        child :Container(
        color: Colors.grey[100],
        child : Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: given_wod.name,
                style: const TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
                children:  <TextSpan>[
                  TextSpan(text: given_wod.type1, style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(text: given_wod.mouvements, style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300)),
                ],
              ),
            ),
          ),
      ),
    ),
    ),
    );
  }
}
