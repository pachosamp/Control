import 'dart:math';

import 'package:control_classroom/src/provider/general.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: FlutterLogo(
                  size: 80.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person), hintText: 'Email'),
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock), hintText: 'Password'),
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40.0),
                      child: Column(
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              auth.loginEmail(email, password).then((value) {
                                print('succes');
                                // Redireccionar a HOME
                              }).catchError((error) => print(error));
                            },
                            child: Text('Login'),
                          ),
                          Row(
                            children: <Widget>[
                              FlatButton(
                                child: Text('Activar'),
                                onPressed: () {},
                              ),
                              Text('/'),
                              FlatButton(
                                onPressed: () {},
                                child: Text('Olvide contraseña'),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
