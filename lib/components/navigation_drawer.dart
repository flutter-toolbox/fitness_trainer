import 'package:flutter/material.dart';

//main screens
import 'package:fitness_trainer/screens/plain_screen.dart';
import 'package:fitness_trainer/screens/tabbed_screen.dart';

//components for main screens
import 'package:fitness_trainer/components/home/home_body.dart';
import 'package:fitness_trainer/components/dashboard/dashboard_body.dart';
import 'package:fitness_trainer/components/achievements/achievements.dart';
import 'package:fitness_trainer/components/assigned_tasks/assigned_tasks_body.dart';
import 'package:fitness_trainer/components/assessments/assessments.dart';
import 'package:fitness_trainer/components/training_history/training_history.dart';
import 'package:fitness_trainer/components/admin/admin_body.dart';

class NavigationDrawer extends StatelessWidget {

  void navigate(BuildContext context, String title) {

    Map navigationMap = {
      'Home': new PlainScreen(title: title, body: HomeBody()),

      'Dashboard': new PlainScreen(title: title, body: DashboardBody()),

      'Leaderboard': new PlainScreen(title: title),

      'Achievements': new TabbedScreen(
        tabCount: Achievements.tabCount,
        title: title,
        bottom: Achievements.bottom(),
        body: Achievements.body()
      ),

      'Quests': new PlainScreen(title: title),

      'Assigned Tasks': new PlainScreen(title: title, body: AssignedTasksBody()),

      'Assessments': new TabbedScreen(
        tabCount: Assessments.tabCount,
        title: title, 
        body: Assessments.body(), 
        bottom: Assessments.bottom()
      ),

      'Training History': new TabbedScreen(
        tabCount: TrainingHistory.tabCount,
        title: title,
        body: TrainingHistory.body(),
        bottom: TrainingHistory.bottom(),
      ),

      'Video Library': new PlainScreen(title: title),

      'Store': new PlainScreen(title: title),

      'Admin': new PlainScreen(title: title, body: AdminBody()),
    };

    MaterialPageRoute router = new MaterialPageRoute(
      builder: (BuildContext context) => navigationMap[title]
    );

    Navigator.of(context).pop();//remove drawer
    Navigator.of(context).push(router);//add next screen
  }

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Fitness Navigation"),
            decoration: BoxDecoration(
              color: Colors.grey.shade400
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () => navigate(context, 'Home'),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Dashboard"),
            onTap: () => navigate(context, 'Dashboard'),
          ),
          ListTile(
            leading: Icon(Icons.whatshot),
            title: Text("Leaderboard"),
            onTap: () => navigate(context, 'Leaderboard'),
          ),
          ListTile(
            leading: Icon(Icons.stars),
            title: Text("Achievements"),
            onTap: () => navigate(context, 'Achievements'),
          ),
          ListTile(
            leading: Icon(Icons.priority_high),
            title: Text("Quests"),
            onTap: () => navigate(context, 'Quests'),
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text("Assigned Tasks"),
            onTap: () => navigate(context, 'Assigned Tasks'),
          ),
          ListTile(
            leading: Icon(Icons.assessment),
            title: Text("Assessments"),
            onTap: () => navigate(context, 'Assessments'),
          ),
          ListTile(
            leading: Icon(Icons.timeline),
            title: Text("Training History"),
            onTap: () => navigate(context, 'Training History'),
          ),
          ListTile(
            leading: Icon(Icons.video_library),
            title: Text("Video Library"),
            onTap: () => navigate(context, 'Video Library'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Store"),
            onTap: () => navigate(context, 'Store'),
          ),
          //Add authorization for this
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Admin'),
            onTap: () => navigate(context, 'Admin'),
          )
        ],
      ),
    );
  }

}