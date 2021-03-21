import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilyan_medical/network_utils/api.dart';
import 'package:ilyan_medical/theme3/screen/AddSoummission.dart';
//import 'package:nb_utils/nb_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ilyan_medical/theme5/utils/T5Colors.dart';
import 'package:ilyan_medical/theme5/utils/T5Constant.dart';
import 'package:ilyan_medical/theme5/utils/T5Extension.dart';
import 'package:ilyan_medical/theme5/utils/T5Images.dart';
import 'package:ilyan_medical/theme3/utils/strings.dart';
import 'package:ilyan_medical/theme3/utils/widgets.dart';
import 'package:ilyan_medical/theme3/utils/T3Images.dart';
import 'package:ilyan_medical/theme3/utils/imgConst.dart';
import 'package:ilyan_medical/theme3/utils/colors.dart';
import 'dart:convert';
import 'package:ilyan_medical/theme3/screen/AddPatient.dart';

import 'package:ilyan_medical/theme3/screen/PreviewPatient.dart';
import 'package:ilyan_medical/models/PatientModel.dart';

class Patient1 extends StatefulWidget {
  Patient1({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Patient1State createState() => _Patient1State();
}

class _Patient1State extends State<Patient1> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    //print(orientation);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Liste des patients"),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF7CD956),
      ),
      body: new Center(
        child: Dismissible(
          key: Key('Bob'),
          child: new Container(
            padding: EdgeInsets.all(5.0),
            height: 100.0,
            child: new Card(
              elevation: 7.5,
              child: new InkWell(
                onTap: (() => {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => AddPatient()),
                      )
                    }),
                onLongPress: (() => {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => AddSoummission()),
                      )
                    }),
                child: new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            'Soumission N°: 1',
                            style: new TextStyle(
                                color: Colors.teal, fontSize: 20.0),
                          ),
                          new Text(
                            'Bob',
                            style: new TextStyle(
                                color: Colors.teal[700], fontSize: 15.0),
                          ),
                          new Text(
                            '0707763878',
                            style: new TextStyle(
                                color: Colors.teal[700], fontSize: 15.0),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          background: slideRightBackground(),
          secondaryBackground: slideLeftBackground(),
          confirmDismiss: (direction) async {
            if (direction == DismissDirection.endToStart) {
              final bool res = await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Text("Voulez-vous vraiment supprimer Bob ?"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            "Annuler",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        FlatButton(
                          child: Text(
                            "Supprimer",
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            setState(() {});
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
              return res;
            } else {
              final bool res = await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0x00000000), width: 0.0),
                        ),
                        content: SingleChildScrollView(
                          child: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              editForm('Bob', 1),
                              Positioned(
                                right: -40.0,
                                top: -40.0,
                                child: InkResponse(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ));
                  });
              return res;
            }
          },
        ),
      ),
      /*floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF2166AA),
        label: Text('Ajouter'),
        icon: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => AddPatient()),
          ).then((value) => setState(() => {_getListe()}));
        },
      ),*/
    );
  }

  Widget slideRightBackground() {
    return Container(
      color: Colors.green,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            Text(
              " Modifier",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      color: Colors.red,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              " supprimer",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }

  Widget editForm(patient, i) {
    print(i);
  }
}
