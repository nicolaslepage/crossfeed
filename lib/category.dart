// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

import 'like_button_widget.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name;
  final String workout;
  final String workouttype;
  final String mouvements;
  final String score;
  final String weight;
  final String rank;
  final IconData iconLocation;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  const Category({
    Key? key,
    required this.name,
    required this.workout,
    required this.workouttype,
    required this.mouvements,
    required this.score,
    required this.weight,
    required this.rank,
    required this.iconLocation,
  }) : super(key: key);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://api.flutter.dev/flutter/material/Theme-class.html
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child:  Material(
        elevation: 5,
        color: Colors.white,
        child: Column(
            children : [
              Row(
                  children : [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        iconLocation,
                        size: 35.0,
                      ),
                    ),
                    Center(
                      child: Text(
                        name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]
              ),
              Container(
                color: Colors.grey[200],
                child : Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: workout,
                        style: const TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
                        children:  <TextSpan>[
                          TextSpan(text: workouttype, style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                          TextSpan(text: mouvements, style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children : [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Score: \n',
                              style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                              children:  <TextSpan>[
                                TextSpan(text: score, style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Weight: \n',
                              style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                              children:  <TextSpan>[
                                TextSpan(text: weight, style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Rank: \n',
                              style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                              children:  <TextSpan>[
                                TextSpan(text: rank, style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                color: Colors.brown[100],
                child:
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children : const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: like_button(),
                      ),
                      SizedBox(
                        height: 24,
                        child: VerticalDivider(thickness :2.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Icon(
                          Icons.message_outlined,
                          size: 30.0,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                        child: VerticalDivider(thickness :2.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Icon(
                          Icons.share_outlined,
                          size: 30.0,
                        ),
                      ),
                    ]
                ),
              ),
            ]
        )
      ),
    );
  }

}
