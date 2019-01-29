import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => CreateAccountState();

}

class CreateAccountState extends State<CreateAccount> {

  final TextEditingController _usernameController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _passwordConfirmationController = new TextEditingController();

  // final TextEditingController _firstNameController = new TextEditingController();
  // final TextEditingController _lastNameController = new TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Material(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[

            Text('Username:'),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: _usernameController,
              ),
            ),

            Text('Password:'),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: _passwordController,
              ),
            ),
            
            Text('Password:'),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: _passwordConfirmationController,
              ),
            ),

            // Text('First Name:'),
            // Padding(
            //   padding: EdgeInsets.all(15.0),
            //   child: TextField(
            //     controller: _firstNameController,
            //   ),
            // ),

            // Text('Last Name:'),
            // Padding(
            //   padding: EdgeInsets.all(15.0),
            //   child: TextField(
            //     controller: _lastNameController,
            //   ),
            // ),

          ],
        ),
      ),
    );
  }

}