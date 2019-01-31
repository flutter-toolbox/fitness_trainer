import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:fitness_trainer/utilities/firebase_utility.dart';

import 'package:fitness_trainer/screens/plain_screen.dart';
import 'package:fitness_trainer/components/home/home_body.dart';

class Login extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => LoginState();

}

enum FormMode { login, signup }

class LoginState extends State<Login> {

  final _formKey = new GlobalKey<FormState>();
  FormMode _formMode = FormMode.login;

  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _passwordConfirmationController = new TextEditingController();
  
  String _errorMessage = "";
  bool _isLoading = false;

  //TODO: improve form validation and move to Validation utility
  void _loginOrCreate() async {
    if(_formMode == FormMode.login) {
      //validate form
      if(_userController.text.isNotEmpty) {
        if(_passwordController.text.isNotEmpty) {
          this.setState(() {
            _isLoading = true;
          });

          try {
            FirebaseUser user = await FirebaseUtility.emailLogin(
            _userController.text, _passwordController.text);

            this.setState(() {
              _isLoading = false;
            });

            MaterialPageRoute router = new MaterialPageRoute(
              builder: (BuildContext context) => PlainScreen(title: 'Home', body: HomeBody())
            );

            Navigator.of(context).push(router);
          }
          catch(error) {
            this.setState(() {
              _isLoading = false;
              _errorMessage = error.toString();
            });
          }
        }
        else {
          this.setState(() {
            _errorMessage = 'Please enter a password';
          });
        }
      }
      else {
        this.setState(() {
          _errorMessage = 'Please enter an email address';
        });
      }
    }
    else {
      //validate form
      if(_userController.text.isNotEmpty) {
        if(_passwordController.text.isNotEmpty) {
          if(_passwordConfirmationController.text == _passwordController.text) {
            try {
              this.setState(() {
                _isLoading = true;
              });

              FirebaseUser user = await FirebaseUtility.createUser(
                _userController.text, _passwordController.text);

              this.setState(() {
                _isLoading = false;
              });

              MaterialPageRoute router = new MaterialPageRoute(
                builder: (BuildContext context) => PlainScreen(title: 'Home', body: HomeBody())
              );

              Navigator.of(context).push(router);
            }
            catch(error) {
              this.setState(() {
                _isLoading = false;
                _errorMessage = error.toString();
              });
            }
          }
          else {
            this.setState(() {
              _errorMessage = 'Passwords do not match';
            });
          }
        }
        else {
          this.setState(() {
            _errorMessage = 'Please enter a password';
          });
        }
      }
      else {
        this.setState(() {
          _errorMessage = 'Please enter an email address';
        });
      }
    }
  }

  _googleSignIn() async {
    try {
      this.setState(() {
        _isLoading = true;
      });

      FirebaseUser user = await FirebaseUtility.googleLogin();

      this.setState(() {
        _isLoading = false;
      });

      MaterialPageRoute router = new MaterialPageRoute(
        builder: (BuildContext context) => PlainScreen(title: 'Home', body: HomeBody())
      );

      Navigator.of(context).push(router);
    }
    catch(error) {
      this.setState(() {
        _isLoading = false;
        _errorMessage = error.toString();
      });
    }
  }

  void _changeFormToSignUp() {
    setState(() {
      _formKey.currentState.reset();
      _errorMessage = "";
      _formMode = FormMode.signup;
      _userController.text = '';
      _passwordController.text = '';
      _passwordConfirmationController.text = '';
    });
  }

  void _changeFormToLogin() {
    setState(() {
      _formKey.currentState.reset();
      _errorMessage = "";
      _formMode = FormMode.login;
      _userController.text = '';
      _passwordController.text = '';
      _passwordConfirmationController.text = '';
    });
  }

  Widget _loginBody() {
    return Material(
      child: Container(

        alignment: Alignment.center,
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              //logo

              //email
              Padding(
                padding: EdgeInsets.only(
                  top: 150.0, //only until image present
                  left: 40.0,
                  right: 40.0,
                  bottom: 7.5
                ),
                child: TextField(
                  controller: _userController,
                  keyboardType: TextInputType.emailAddress,
                  // validator: (value) => value.isEmpty ? 'Please enter email' : null,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    hintText: 'Email',
                    icon: Icon(
                      Icons.person, 
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //password
              Padding(
                padding: EdgeInsets.only(
                  top: 7.5,
                  left: 40.0,
                  right: 40.0,
                  //bottom: 7.5,
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  // validator: (value) => value.isEmpty ? 'Please enter password' : null,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    hintText: 'Password',
                    icon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    )
                  ),
                ),
              ),

              _passwordConfirmation(),

              _displayErrorMessage(),

              _switchFormButton(),

              _primaryButton(),

              _googleButton(),
            
            ],
          ),
        ),
      )
    );
  }

  Widget _passwordConfirmation() {
    if(_formMode == FormMode.signup) 
      return Padding(
        padding: EdgeInsets.only(
          top: 15.0,
          left: 40.0,
          right: 40.0,
          //bottom: 7.5,
        ),
        child: TextField(
          controller: _passwordConfirmationController,
          obscureText: true,
          // validator: (value) => value.isEmpty ? 'Please enter password' : null,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black
              )
            ),
            hintText: 'Password Confirmation',
            icon: Icon(
              Icons.lock,
              color: Colors.black,
            )
          ),
        ),
      );
    else
      return Container(height: 0.0);
  }

  Widget _primaryButton() {
    return Padding(
      padding: EdgeInsets.only(
        top: 7.5,
        left: 100.0,
        right: 100.0,
        bottom: 7.5
      ),
      child: RaisedButton(
        child: _formMode == FormMode.login
          ? Text('Login')
          : Text('Create Account'),
        color: Colors.redAccent.shade400,
        onPressed: _loginOrCreate,
      )
    );
  }

  Widget _switchFormButton() {
    return Padding(
      padding: EdgeInsets.only(
        left: 100.0,
        right: 100.0,
        bottom: 7.5,
      ),
      child: FlatButton(
        child: _formMode == FormMode.login
          ? Text(
            'Create Account',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.blue
            ),
          )
          : Text(
            'Have an account? Sign in',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.blue,
            ),
          ),
        onPressed: _formMode == FormMode.login
          ? _changeFormToSignUp
          : _changeFormToLogin,
      )
    );
  }

  Widget _googleButton() {
    if(_formMode == FormMode.login) 
      return Padding(
        padding: EdgeInsets.only(
          top: 7.5,
          left: 100.0,
          right: 100.0,
          bottom: 7.5
        ),
        child: RaisedButton(
          child: Text('Google Sign In'), 
          color: Colors.redAccent.shade400,
          onPressed: _googleSignIn,
        )
      );
    else
      return Container(height: 0.0);
  }

  Widget _displayErrorMessage() {
    if(_errorMessage.length > 0 && _errorMessage != null) 
      return Container(
        alignment: Alignment.center,
        child: Text(
          _errorMessage,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      );
    else
      return Container(height: 0.0);
  }

  Widget _loadingIcon() {
    if(_isLoading)
      return Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    else
      return Container(height: 0.0);
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        _loginBody(),
        _loadingIcon()
      ],
    );
  }
}