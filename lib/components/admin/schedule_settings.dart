import 'package:flutter/material.dart';

class ScheduleSettings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    //TODO: hook up functions to api
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Add New Class'),
            subtitle: Text('Add a new type of class to your current offerings'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Remove Class'),
            subtitle: Text('Remove a class from your current offerings'),
            onTap: () => debugPrint('Removing class'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Add Class To Schedule'),
            subtitle: Text('Add a class from your current offerings to the schedule'),
            onTap: () => debugPrint('Adding class to schedule'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Remove Class From Schedule'),
            subtitle: Text('Remove a class from your schedule'),
            onTap: () => debugPrint('Removing class'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Add Event'),
            subtitle: Text('Add an event to your list of offerings'),
            onTap: () => debugPrint('Adding Event'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Remove Event'),
            subtitle: Text('Remove an event from your list of offerings'),
            onTap: () => debugPrint('Removing Event'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Add Event to Schedule'),
            subtitle: Text('Add an event from your current offerings to the schedule'),
            onTap: () => debugPrint('adding event to schedule'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Remove Event from Schedule'),
            subtitle: Text('Remove an event from the schedule'),
            onTap: () => debugPrint('Removing class'),
          ),
        ),
      ],
    );
  }

}