import 'package:flutter/material.dart';

import 'package:fitness_trainer/components/navigation_drawer.dart';
import 'package:fitness_trainer/components/account_menu.dart';

class PlainScreen extends StatelessWidget {
  
  final String title;
  final Widget body;

  PlainScreen({Key key, this.title, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade700,

        title: Text(title),

        actions: <Widget>[
          AccountMenu(),
        ],

      ),

      backgroundColor: Colors.grey.shade700,

      body: body,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent.shade700,
        child: Icon(Icons.add),
        onPressed: () => debugPrint("Floating Action button pressed"),
      ),

      drawer: NavigationDrawer()
    );
  }

}