import 'package:control_classroom/src/pages/login/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
initialRoute: 'login',
      routes: {
        'login':(BuildContext context)=> LoginPage(),
      },
    );
  }
}


