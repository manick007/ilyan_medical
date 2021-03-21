import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilyan_medical/network_utils/api.dart';
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
import 'dart:async';

class Patient extends StatefulWidget {
  Patient({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  //creer un patient sur une nouvelle page
  //modifier sur un popup
  List<PatientModel> mesActivites = [];
  List<PatientModel> _searchResult = [];
  int i = 0;
  double width;

  @override
  void initState() {
    _checkIfLoggedIn();
    _getListe();
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) {
    debugPrint("payload : $payload");
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text('Notification'),
        content: new Text('$payload'),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
  var patientSelected = new PatientModel();
  var _isLoading = false;
  var _isUpdating = false;
  var id = 'Null';
  TextEditingController controller = TextEditingController(); //1

  List<TextEditingController> piecesJoints,
      adresseController,
      telephoneController,
      emailController;
  Widget setIcon(IconData d) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xff7cd955),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        d,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    //print(orientation);
    width = MediaQuery.of(context).size.width;
    return GestureDetector(
        //pour gérer la compatibilité de clavier IOS et Android
        onTap: (() => FocusScope.of(context).requestFocus(new FocusNode())),
        child: Scaffold(
          backgroundColor: const Color(0xff2166ab),
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Liste de patients',
                      style: TextStyle(
                        fontFamily: 'SF UI Display',
                        fontSize: 20,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(width: 45),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Transform.rotate(
                      angle: 2.618,
                      child: Container(
                        width: 135.5,
                        height: 135.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0),
                            colors: [
                              const Color(0x00ffffff),
                              const Color(0x03ffffff),
                              const Color(0x10ffffff),
                              const Color(0x1cffffff),
                              const Color(0x1cffffff)
                            ],
                            stops: [0.0, 0.242, 0.724, 1.0, 1.0],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0)),
                    color: Color(0xFFFFFFFF),
                  ),
                  height: 501,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      SizedBox(
                        width: 300.0,
                        height: 50,
                        child: TextField(
                          controller: controller,
                          decoration: new InputDecoration(
                            suffixIcon: setIcon(Icons.search),
                            hintText: 'Recherche',
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.grey),
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(20.0),
                              ),
                            ),
                          ),
                          onChanged: onSearchTextChanged,
                        ),
                      ),
                      Expanded(
                        child: _searchResult.length != 0 ||
                                controller.text.isNotEmpty
                            ? listefilt()
                            : liste(),
                      ),
                    ],
                  )),
            ])),
          ),
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Color(0xFF2166AA),
            label: Text('Ajouter'),
            icon: Icon(Icons.add),
            onPressed: () {
              //showNotification();
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => AddPatient()),
              ).then((value) => setState(() => {_getListe()}));
            },
          ),
        ));
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var idToken = localStorage.getString('id');
    if (idToken != null) {
      setState(() {
        id = idToken;
      });
    }
  }

  void _getListe() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var idToken = localStorage.getString('id');
    setState(() {
      _isLoading = true;
    });
    var data = {
      'id_medecin': idToken //id medecin
    };
    List<PatientModel> myModels = [];
    var res = await Network().authData(data, '/liste_patients.php');
    var body = json.decode(res.body);
    var patient;
    body.forEach((element) =>
        {patient = PatientModel.fromJson(element), myModels.add(patient)});
    setState(() {
      mesActivites = myModels;
    });
    _initControllerListe(myModels.length);
  }

  _initControllerListe(taille) {
    setState(() {
      adresseController = [
        for (int i = 0; i < taille; i++)
          TextEditingController(text: mesActivites[i].adresse)
      ];
      telephoneController = [
        for (int i = 0; i < taille; i++)
          TextEditingController(text: mesActivites[i].telephone)
      ];
      emailController = [
        for (int i = 0; i < taille; i++)
          TextEditingController(text: mesActivites[i].email)
      ];
    });
  }

  Widget grille() {
    return new GridView.builder(
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: mesActivites.length,
        itemBuilder: (context, i) {
          return new Container(
            margin: EdgeInsets.all(2.5),
            child: new Card(
                elevation: 10.0,
                child: new InkWell(
                  onTap: (() => print('Tap grille')),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Text('Patient:',
                          style: new TextStyle(
                              color: Colors.teal, fontSize: 15.0)),
                      new Icon(
                        mesActivites[i].icone,
                        color: Colors.teal,
                        size: 40.0,
                      ),
                      new Text(
                        mesActivites[i].nom,
                        style: new TextStyle(
                            color: Colors.teal,
                            fontSize: 22.0,
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                )),
          );
        });
  }

  Widget liste() {
    //var h = MediaQuery.of(context).size.height;
    return new ListView.builder(
        itemCount: mesActivites.length,
        itemBuilder: (context, k) {
          PatientModel activite = mesActivites[k];
          String key = activite.nom;
          return new Dismissible(
            key: new Key(key),
            child: new Container(
              padding: EdgeInsets.all(5.0),
              height: 100.0,
              child: new Card(
                elevation: 7.5,
                child: new InkWell(
                  onTap: (() => print("Tapped")),
                  onLongPress: (() => {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  PreviewPatient(patient: activite)),
                        ).then((value) => setState(() => {_getListe()}))
                      }),
                  child: new Container(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        /*new Icon(
                          activite.icone,
                          color: Color(0xff7cd955),
                          size: 70.0,
                        ),*/
                        new CircleAvatar(
                          backgroundColor: Color(0xff7cd955),
                          child: Text(activite.nom[0]),
                        ),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              'Soumission N°:${i++}',
                              style: new TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                            new Text(
                              activite.nom,
                              style: new TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                            new Text(
                              activite.telephone,
                              style: new TextStyle(
                                  color: Colors.black, fontSize: 15.0),
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
                        content: Text(
                            "Voulez-vous vraiment supprimer ${mesActivites[k].nom}?"),
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
                              setState(() {
                                mesActivites.removeAt(k);
                              });
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
                                editForm(activite, k),
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
          );
        });
  }

  Widget listefilt() {
    //var h = MediaQuery.of(context).size.height;
    return new ListView.builder(
        itemCount: _searchResult.length,
        itemBuilder: (context, k) {
          PatientModel activite = _searchResult[k];
          String key = activite.nom;
          return new Dismissible(
            key: new Key(key),
            child: new Container(
              padding: EdgeInsets.all(5.0),
              height: 100.0,
              child: new Card(
                elevation: 7.5,
                child: new InkWell(
                  onTap: (() => print("Tapped")),
                  onLongPress: (() => {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  PreviewPatient(patient: activite)),
                        ).then((value) => setState(() => {_getListe()}))
                      }),
                  child: new Container(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        /*new Icon(
                          activite.icone,
                          color: Color(0xff7cd955),
                          size: 70.0,
                        ),*/
                        new CircleAvatar(
                          backgroundColor: Color(0xff7cd955),
                          child: Text(activite.nom[0]),
                        ),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              'Soumission N°:${i++}',
                              style: new TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                            ),
                            new Text(
                              activite.nom,
                              style: new TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                            new Text(
                              activite.telephone,
                              style: new TextStyle(
                                  color: Colors.black, fontSize: 15.0),
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
                        content: Text(
                            "Voulez-vous vraiment supprimer ${mesActivites[k].nom}?"),
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
                              setState(() {
                                mesActivites.removeAt(k);
                              });
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
                                editForm(activite, k),
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
          );
        });
  }

  Widget editModal(patient, i) {
    return AlertDialog(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0x00000000), width: 0.0),
        ),
        content: SingleChildScrollView(
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              editForm(patient, i),
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
  }

  Widget slideRightBackground() {
    return Container(
      color: Color(0xff7cd955),
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

  void _update(context, patient, i) async {
    setState(() {
      _isLoading = true;
    });
    var data = {
      'id': patient.id,
      'adresse': patient.adresse,
      'telephone': patient.telephone,
      'email': patient.email,
      'pj': patient.piecesJoint
    };
    print('data: $data');
    //est ce que le format de data est bon?
    var res = await Network().authData(data, '/update_patients.php');
    var body = json.decode(res.body);
    if (body == 'good') {
      setState(() {
        //adresse = adresseController.text;
        //telephone = telephoneController.text;
        //email=emailController.text;
      });
      Navigator.of(context).pop();
    } else {
      //_showMsg(body['message']);
    }
    setState(() {
      _isUpdating = false;
    });
  }

  Widget editForm(patient, i) {
    print(i);
    return Form(
      key: new Key(patient.nom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 16),
          TextFormField(
            key: Key('adresse'),
            controller: adresseController[i],
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              //contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
              hintText: "modifier l'adresse",
              filled: true,
              fillColor: t3_edit_background,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: t3_edit_background, width: 0.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: t3_edit_background, width: 0.0),
              ),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            key: Key('telephone'),
            controller: telephoneController[i],
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              hintText: "modifier le telephone",
              //contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
              filled: true,
              fillColor: t3_edit_background,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: t3_edit_background, width: 0.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: t3_edit_background, width: 0.0),
              ),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: emailController[i],
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              //contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
              hintText: 'email',
              filled: true,
              fillColor: t3_edit_background,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: t3_edit_background, width: 0.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: t3_edit_background, width: 0.0),
              ),
            ),
            validator: (emailValue) {
              if (emailValue.isEmpty) {
                return 'Entrez votre e-mail';
              }
              patient.email = emailValue;
              return null;
            },
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: AppButton(
              textContent: _isUpdating
                  ? 'En cours...'
                  : 'Mise à jour', //bouton connexion
              onPressed: () {
                patient.email = emailController[i].text;
                patient.telephone = telephoneController[i].text;
                patient.adresse = adresseController[i].text;
                _update(context, patient, i);
                // }
              },
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    mesActivites.forEach((mesactivites) {
      if (mesactivites.nom.contains(text)) _searchResult.add(mesactivites);
    });

    setState(() {});
  }

  showNotification() async {
    var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME', 'CHANNEL DESCRIPTION',
        priority: Priority.high, importance: Importance.max);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin.show(
        0, 'Notification', 'Ilyan Medical', platform,
        payload: 'Bon pour les notifications');
  }
}
