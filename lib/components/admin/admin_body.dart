import 'package:flutter/material.dart';

import 'admin_settings.dart';
import 'schedule_settings.dart';
import 'user_settings.dart';
import 'workout_settings.dart';
import 'quest_settings.dart';
import 'achievement_settings.dart';

class AdminBody extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => AdminBodyState();

}

class AdminBodyState extends State<AdminBody> {

  List<AdminSettings> settings = <AdminSettings> [
    
    AdminSettings(
      false,
      'Schedule Settings',
      ScheduleSettings(),
      Icon(Icons.schedule)
    ),

    AdminSettings(
      false,
      'User Settings',
      UserSettings(),
      Icon(Icons.account_circle)
    ),

    AdminSettings(
      false,
      'Workout Settings',
      WorkoutSettings(),
      Icon(Icons.fitness_center)
    ),

    AdminSettings(
      false,
      'Quest Settings',
      QuestSettings(),
      Icon(Icons.priority_high)
    ),

    AdminSettings(
      false,
      'Achievement Settings',
      AchievementSettings(),
      Icon(Icons.star)
    ),
  ];
  
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
        ExpansionPanelList(

          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              settings[index].isExpanded = !settings[index].isExpanded;
            });
          },

          children: settings.map((settings) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  leading: settings.icon,
                  title: Text(settings.header),
                );
              },
              isExpanded: settings.isExpanded,
              body: settings.body
            );
          }).toList(),

        )
      ]
    );
  }

}