import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ilyan_medical/theme3/screen/T3BottomNavigation.dart';
import 'package:ilyan_medical/theme3/screen/T3SignIn.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isAuth = false;
  @override
  void iniState() {
    _checkIfLoggedIn();
    super.initState();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      setState(() {
        isAuth = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = T3BottomNavigation(); //page après login
    } else {
      child = T3SignIn(); //page login / inscription
    }
    return Scaffold(
      body: child,
    );
  }
}
