import 'package:flutter/material.dart';

class Workout extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return WorkoutState();
  }

}

class WorkoutState extends State<Workout> {

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('Workout'),
          ),
          //TODO: Create navigation component
          Text('Navigation Header goes here'),
          //TODO: Create datatable component
          Text('Workout displays here'),
        ],
      ),
    );
  }

}