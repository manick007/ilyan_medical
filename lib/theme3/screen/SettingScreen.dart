import 'package:flutter/material.dart';
import 'package:ilyan_medical/theme3/utils/widgets.dart';
import 'package:ilyan_medical/theme5/utils/AppConstant.dart';
import 'package:ilyan_medical/theme5/utils/AppWidget.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

import '../../main.dart';

class SettingScreen extends StatefulWidget {
  @override
  SettingScreenState createState() => SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  bool indic = false; //indicateur
  bool h = false;
  @override
  void initState() {
    init();
    super.initState();
  }

  init() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    if (!h) {
      indic = localStorage.getBool('indic'); //1 indic = null
      h = true;
    }
    localStorage.setBool('indic', indic); //1 indic = null

    print(indic);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Réglages'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: setColor(),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 16),
            settingItem(
              context,
              "À propos",
              () async {
                /*launch(DocumentationUrl,
                    forceWebView: true, enableJavaScript: true);*/
              },
              leading: Image.asset('images/app/ic_documentation.png',
                  height: 24, width: 24, color: setColor()),
            ),
            Divider(height: 0),
            settingItem(
              context,
              "Nous contacter",
              () async {
                /*await Share.share(
                    'Download $mainAppName from Play Store\n\n\n$PlayStoreUrl');*/
              },
              leading: Image.asset('images/app/ic_share.png',
                  height: 24, width: 24, color: setColor()),
            ),
            Divider(height: 0),
            settingItem(
              context,
              "Theme Mode",
              () {
                setState(() {});
              },
              leading: Image.asset('images/app/ic_theme.png',
                  height: 24, width: 24, color: setColor()),
              detail: Switch(
                value: indic,
                onChanged: (s) {
                  setState(() {
                    indic = s;
                  });
                },
              ),
            ),
            Divider(height: 0),
            SizedBox(height: 16),
            Center(
                child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: AppButton(
                    onPressed: () {
                      logout(context);
                    },
                    textContent: 'Se déconnecter',
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }

//fonction pour se déconnecter
  logout(BuildContext context) async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    await localStorage.clear();
    Navigator.pop(context);
  }

  setColor() {
    if (indic) {
      return Color(0xFF2166AA);
    } else {
      return Color(0xFF7CD956);
    }
  }
}
