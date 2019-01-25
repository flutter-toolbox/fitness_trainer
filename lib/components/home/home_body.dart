import 'package:flutter/material.dart';

import 'package:fitness_trainer/components/home/schedule.dart';
import 'package:fitness_trainer/components/home/workout.dart';
import 'package:fitness_trainer/components/home/quest.dart';
import 'package:fitness_trainer/components/home/events.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: 15.0,
            left: 15.0,
            right: 15.0,
            bottom: 5.0
          ),
          child: Schedule()
        ),

        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            left: 15.0,
            right: 15.0,
            bottom: 5.0
          ),
          child: Workout(),
        ),

        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            left: 15.0,
            right: 15.0,
            bottom: 5.0
          ),
          child: Quest(title: 'Daily Quest', questDetails: 'Details go here'),
        ),

        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            left: 15.0,
            right: 15.0,
            bottom: 5.0
          ),
          child: Quest(title: 'Weekly Quest', questDetails: 'Details go here'),
        ),

        Padding(
          padding: EdgeInsets.only(
            top: 10.0,
            left: 15.0,
            right: 15.0,
            bottom: 10.0
          ),
          child: EventsList(),
        ),

      ],
    );
  }

}