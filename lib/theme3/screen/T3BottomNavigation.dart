import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilyan_medical/theme3/screen/patient1.dart';
import 'package:ilyan_medical/theme3/utils/Extension.dart';
import 'package:ilyan_medical/theme3/utils/T3BottomNavigationBar.dart';
import 'package:ilyan_medical/theme3/utils/T3Constant.dart';
import 'package:ilyan_medical/theme3/utils/T3Images.dart';
import 'package:ilyan_medical/theme3/utils/colors.dart';
import 'package:ilyan_medical/theme3/utils/strings.dart';
import 'package:ilyan_medical/theme3/utils/widgets.dart';
import 'package:ilyan_medical/theme3/screen/T3SignUp.dart';
import 'package:ilyan_medical/theme3/screen/T3SignIn.dart';
import 'package:ilyan_medical/theme3/screen/T3Dashboard.dart';
import 'package:ilyan_medical/theme3/screen/SettingScreen.dart';
import 'package:ilyan_medical/theme3/screen/Patient.dart';
import 'package:ilyan_medical/theme3/screen/T5Profile.dart';

class T3BottomNavigation extends StatefulWidget {
  //static var tag = "/T3BottomNavigation";
  T3BottomNavigation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  T3BottomNavigationState createState() => T3BottomNavigationState();
}

class T3BottomNavigationState extends State<T3BottomNavigation> {
  @override
  void initState() {
    super.initState();
  }

  int selectedPage = 0;

  final _pageOptions = [T5Profile(), Patient1(), SettingScreen()];
  @override
  Widget build(BuildContext context) {
    changeStatusColor(t3_app_background);
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: t3_app_background,
        color: t3_white,
        items: <Widget>[
          SvgPicture.asset(t3_ic_home,
              height: 24,
              width: 24,
              fit: BoxFit.none,
              color: selectedPage != 0 ? Color(0xFF2166AA) : Color(0xFF7CD956)),
          SvgPicture.asset(t3_ic_msg,
              height: 24,
              width: 24,
              fit: BoxFit.none,
              color: selectedPage != 1 ? Color(0xFF2166AA) : Color(0xFF7CD956)),
          SvgPicture.asset(t3_notification,
              height: 24,
              width: 24,
              fit: BoxFit.none,
              color: selectedPage != 2 ? Color(0xFF2166AA) : Color(0xFF7CD956)),
          /*SvgPicture.asset(
            t3_ic_user,
            height: 24,
            width: 24,
            fit: BoxFit.none,
          ),*/
        ],
        onTap: (index) {
          setState(() {
            selectedPage = index;
          }); //Handle button tap
        },
      ),
      /* body: SafeArea(
        child: Container(
          color: t3_app_background,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                width: 180,
                alignment: Alignment.center,
                child: ring(t3_lbl_welcome_to_bottom_n_navigation_bar),
              ),
              /* Container(
                height: 60,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: t3_textColorPrimary,
                      onPressed: () {
                        back(context);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Center(
                        child: text(t3_lbl_bottom_navigation,
                            fontFamily: fontBold,
                            textColor: t3_textColorPrimary,
                            fontSize: 22.0),
                      ),
                    )
                  ],
                ),
              ),*/
            ],
          ),
        ),
      ),*/
    );
  }
}
