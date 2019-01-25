import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => ScheduleState();

}

class ScheduleState extends State<Schedule> {

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text('Schedule'),
          ),
          //TODO: Create navigation component
          Text('Navigation Header goes here'),
          //TODO: Create datatable component
          Text('Schedule displays here'),
        ],
      ),
    );
  }

}