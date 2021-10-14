import 'dart:ffi';

import 'package:flutter/material.dart';
import 'model/workout.dart';
import 'workout_description_route.dart';

class Wodlist_route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    const _categoryNames = <String>[
      'Martin Btx',
      'Nicolas Lepage',
      'Ugo Pelissier',
      'Mathis Egnell',
      'Gabriele Dabbaghian',
      'Hanane El Hajji',
      'Raphael Toledano',
    ];

    const _categorytype = <String>[
      'Hero',
      'Girl',
      'Girl',
      'Hero',
      'Girl',
      'Hero',
      'Girl',
    ];

    const List<List<String>> _categorycat = [
      <String>[ 'gym', 'endurance'],
      <String>[ 'weightlifting', 'gym', 'aerobic'],
      <String>[ 'gym', 'aerobic'],
      <String>[ 'gym', 'aerobic'],
      <String>[ 'weightlifting', 'aerobic'],
      <String>[ 'weightlifting'],
      <String>['aerobic'],
      <String>[ 'gym', 'endurance'],
    ];

    const _categoryWorkoutname = <String>[
      'Murph:\n',
      'Fran:\n',
      'Annie:\n',
      'Kalsu:\n',
      'Grace: \n',
      'Jerry: \n',
      'Chelsea: \n',
    ];

    const _categoryWorkouttype = <String>[
      'For Time\n',
      'For Time\n',
      'For Time\n',
      'For Time\n',
      'For Time\n',
      'For Time\n',
      'EMOM 30min\n',
    ];

    const _categoryWorkoutmouvements = <String>[

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

    const _categoryscore = <String>[
      '00:32:15',
      '00:04:45',
      '00:15:18',
      '00:28:05',
      '00:07:08',
      '00:29:12',
      '26 Rounds',
    ];

    const _categoryweight = <String>[
      'Scaled',
      'RX',
      'Scaled',
      'RX',
      'Scaled',
      'RX',
      'Scaled',
    ];

    const _categoryrank = <String>[
      '999th',
      '1st ;)',
      '200th',
      '12th',
      '19th',
      '327th',
      '512th',
    ];

    final wod_examples = <Workout>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      wod_examples.add(Workout(
        name: _categoryWorkoutname[i],
        type1: _categoryWorkouttype[i],
        mouvements: _categoryWorkoutmouvements[i],
        cat: _categorycat[i],
      ));
    }

    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(wod_examples.length, (index) {
        return RaisedButton(

          elevation: 5,
          onPressed: () {
            Navigator.push (
              context,
              MaterialPageRoute(builder: (context) => workout_description_route(given_wod :wod_examples[index]))
            );
          },
          color: Colors.brown[50],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          child: Center(
          child: Text(
            wod_examples[index].name,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        );
      }),
    );
  }
}