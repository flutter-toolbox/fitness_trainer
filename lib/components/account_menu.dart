import 'package:flutter/material.dart';

enum accoutMenuItems { info, logout }

class AccountMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return PopupMenuButton<accoutMenuItems>(
      
      icon: Icon(Icons.account_circle),

      onSelected: (accoutMenuItems result) => debugPrint('$result selected!'),

      itemBuilder: (BuildContext context) => <PopupMenuEntry<accoutMenuItems>>[
        
        PopupMenuItem<accoutMenuItems>(
          value: accoutMenuItems.info,
          child: ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account Information'),
          ),
        ),

        PopupMenuItem<accoutMenuItems>(
          value: accoutMenuItems.logout,
          child: ListTile(
            leading: Icon(Icons.power_settings_new),
            title: Text('Logout'),
          ),
        )
      ],
    );
  }

}