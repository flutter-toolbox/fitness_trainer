import 'package:flutter/material.dart';

class EventsList extends StatefulWidget {

  final List events;

  EventsList({Key key, this.events}) : super(key: key);

  @override
  State<StatefulWidget> createState() => EventsListState();

}

class EventsListState extends State<EventsList> {

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //TODO: Create list builder/column builder or something
          //each child will have title, details, and register button
          Text('List of events goes here')
        ],
      ),
    );
  }

}