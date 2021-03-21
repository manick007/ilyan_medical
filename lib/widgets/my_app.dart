import 'package:flutter/material.dart';
import 'package:ilyan_medical/theme3/screen/T3SignIn.dart';
import 'package:ilyan_medical/theme3/screen/T5Profile.dart';
import 'package:ilyan_medical/theme3/screen/firstpage1.dart';
import 'package:ilyan_medical/theme3/screen/mc.dart';
import 'package:ilyan_medical/theme3/screen/sign_example.dart';
import 'package:ilyan_medical/widgets/home.dart';
import 'package:ilyan_medical/theme3/screen/Patient.dart';
import 'package:ilyan_medical/theme3/screen/T3BottomNavigation.dart';
//import 'package:ilyan_medical/theme3/screen/T3Profile.dart';
import 'package:ilyan_medical/theme3/screen/me.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // retirer le banner
      title: 'Ilyan Medical',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Fistpage1(), //T3SignIn(title: 'Ilyan Medical'),
    );
  }
}
