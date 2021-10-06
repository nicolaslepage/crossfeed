// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

const _rowHeight = 500.0;

const String someText =
    "Murph :\n"
    "For Time\n"
    "1 mile run\n"
    "100 pull-ups\n"
    "200 push-ups\n"
    "300 squats\n"
    "1 mile run";

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name;
  final IconData iconLocation;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  const Category({
    Key? key,
    required this.name,
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
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
      color: Colors.white,
      child: Column(
        children : [
          Row(
            children : [
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Icon(
                iconLocation,
                size: 30.0,
              ),
            ),
            Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ]
          ),
          Container(
            color: Colors.grey[200],
            child :
            Center(
              child: Text(
                someText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          Container(
            color: Colors.brown[100],
            child:
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children : const [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 30.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.message,
                      size: 30.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.share,
                      size: 30.0,
                    ),
                  ),
                ]
            ),
          ),
          Container(
            color: Colors.brown[100],
            child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children : const [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 30.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.message,
                      size: 30.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.share,
                      size: 30.0,
                    ),
                  ),
                ]
            ),
          ),
        ]
      )
    );
  }
}
