import 'package:flutter/material.dart';

class AchievementSettings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //TODO: hook up functions to api
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Create New Achievement'),
            subtitle: Text('Create new achievment for users to complete'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),

        Padding(
          padding: EdgeInsets.all(5.0),
          child: ListTile(
            title: Text('Modify Achievement'),
            subtitle: Text('Modify an achievement'),
            onTap: () => debugPrint('adding new class'),
          ),
        ),
      ],
    );
  }

}