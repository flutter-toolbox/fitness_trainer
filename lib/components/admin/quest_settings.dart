import 'package:flutter/material.dart';

class QuestSettings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //TODO: hook up functions to api
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Create New Quest'),
            subtitle: Text('Create a new quest for users to complete'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Modify Quest'),
            subtitle: Text('Modify an existing quest'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Set Quest Reset Time'),
            subtitle: Text('Set the time when Daily, Weekly, and Monthly quests reset'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),
      ],
    );
  }

}