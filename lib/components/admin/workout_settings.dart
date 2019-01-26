import 'package:flutter/material.dart';

class WorkoutSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //TODO: hook up functions to api
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Add Workout To Schedule'),
            subtitle: Text('Create a workout and add it to the schedule'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Remove Workout From Schedule'),
            subtitle: Text('Remove a workout from the schedule'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),
      ],
    );
  }

}