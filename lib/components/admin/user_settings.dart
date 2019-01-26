import 'package:flutter/material.dart';

class UserSettings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //TODO: hook up functions to api
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Modify User'),
            subtitle: Text('Search for and change a user\'s settings'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Disable User'),
            subtitle: Text('Disable a user account'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Add Task to user'),
            subtitle: Text('Create a task for one or more users'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),
      ],
    );
  }

}