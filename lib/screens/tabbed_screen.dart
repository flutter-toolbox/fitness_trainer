import 'package:flutter/material.dart';

import 'package:fitness_trainer/components/navigation_drawer.dart';
import 'package:fitness_trainer/components/account_menu.dart';

class TabbedScreen extends StatelessWidget {

  final String title;
  final int tabCount;
  final Widget bottom;
  final Widget body;

  TabbedScreen({Key key, this.title, this.tabCount, this.bottom, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: tabCount,

      child: Scaffold(  
        appBar: AppBar(
          backgroundColor: Colors.redAccent.shade700,

          title: Text(title),

          actions: <Widget>[
            AccountMenu(),
          ],

          bottom: bottom
        ),

        backgroundColor: Colors.grey.shade700,

        body: body,

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent.shade700,
          child: Icon(Icons.add),
          onPressed: () => debugPrint('Floating Action Button Pressed!'),
        ),

        drawer: NavigationDrawer(),
      ),

    );
  }
}