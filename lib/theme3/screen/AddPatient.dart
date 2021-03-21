import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilyan_medical/theme3/utils/Extension.dart';
import 'package:ilyan_medical/theme3/utils/T3BottomNavigationBar.dart';
import 'package:ilyan_medical/theme3/utils/T3Images.dart';
import 'package:ilyan_medical/theme3/utils/colors.dart';
import 'package:ilyan_medical/theme3/utils/widgets.dart';
import 'package:ilyan_medical/theme3/screen/Patient.dart';
import 'package:ilyan_medical/theme3/screen/T5Profile.dart';
import 'package:ilyan_medical/network_utils/api.dart';
import 'package:ilyan_medical/theme3/utils/T3Constant.dart';
import 'package:ilyan_medical/theme3/utils/T3Images.dart';
import 'package:ilyan_medical/theme3/utils/colors.dart';
import 'package:ilyan_medical/theme3/utils/strings.dart';
import 'package:ilyan_medical/theme3/utils/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ilyan_medical/models/PatientModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';
import 'dart:io';

enum SingingCharacter { mad, perfusion, analyse, cno }

class AddPatient extends StatefulWidget {
  //static var tag = "/T3BottomNavigation";
  AddPatient({Key key, this.id_medecin}) : super(key: key);
  final int id_medecin;

  @override
  AddPatientSate createState() => AddPatientSate();
}

class AddPatientSate extends State<AddPatient> {
  @override
  void initState() {
    super.initState();
    _geo();
    inside([51.42313, 6.76094], polygon); // appel de ma fonction
  }

  final _formKey = GlobalKey<FormState>();
  var _isLoading = false;
  var now = new DateTime.now();
  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();
  SingingCharacter _character = SingingCharacter.mad;

  var adresse = '220, Düsseldorfer Straße,Duisbourg, 47053, Allemagne';
  // array of coordinates of each vertex of the polygon
  var polygon = [
    [51.42461, 6.76225],
    [51.42446, 6.76828],
    [51.41876, 6.77149],
    [51.41677, 6.76348],
    [51.42168, 6.76021]
  ];

  var patient = new PatientModel();
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  Widget setIcon(IconData d) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        d,
        color: Colors.white,
      ),
    );
  }

  Widget editForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 16),
          TextFormField(
            key: Key('name'),
            //controller: lastNameController,
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              //contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),

              prefixIcon: setIcon(Icons.person),

              hintText: t3_user_nom,
              filled: true,
              fillColor: t3_white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            validator: (nom) {
              if (nom.isEmpty) {
                return 'Entrez votre nom';
              }
              patient.setNom(nom);
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            key: Key('prenom'),
            //controller: firtNameController,
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              //contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
              hintText: t3_user_prenom,
              prefixIcon: setIcon(Icons.person),
              filled: true,
              fillColor: t3_white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            validator: (prenom) {
              if (prenom.isEmpty) {
                return 'Entrez votre prenom';
              }
              patient.setPrenom(prenom);
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            key: Key('adresse'),
            //controller: adresseController,
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              //contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
              hintText: t3_lbl_adresse,
              prefixIcon: setIcon(Icons.home),
              filled: true,
              fillColor: t3_white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            validator: (adresse) {
              if (adresse.isEmpty) {
                return 'Entrez votre adresse';
              }
              patient.setAdresse(adresse);
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            key: Key('telephone'),
            //controller: telephoneController,
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Telephone',
              //contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
              prefixIcon: setIcon(Icons.local_phone),
              filled: true,
              fillColor: t3_white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            validator: (telephone) {
              if (telephone.isEmpty) {
                return 'Entrez votre telephone';
              }
              patient.setTelephone(telephone);
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            key: Key('fixe'),
            //controller: telephoneController,
            keyboardType: TextInputType.number,
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Fixe',
              prefixIcon: setIcon(Icons.person),
              filled: true,
              fillColor: t3_white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            validator: (fixe) {
              if (fixe.isEmpty) {
                return 'Entrez votre Fixe';
              }
              patient.setFixe(fixe);
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            //controller: emailController,
            key: Key('email'),
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              //contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
              hintText: t3_user_email,
              prefixIcon: setIcon(Icons.mail),
              filled: true,
              fillColor: t3_white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            validator: (email) {
              if (email.isEmpty) {
                return 'Entrez votre e-mail';
              }
              patient.setEmail(email);
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            //controller: emailController,
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            style:
                TextStyle(fontSize: textSizeSMedium, fontFamily: fontRegular),
            obscureText: false,
            decoration: InputDecoration(
              //contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
              hintText: "Description",
              filled: true,
              fillColor: t3_white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
            ),
            validator: (desc) {
              if (desc.isEmpty) {
                return 'Description du patient';
              }
              patient.setDescription(desc);
              return null;
            },
          ),
          SizedBox(height: 16),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    child: Column(
                      children: [
                        Text('Mad'),
                        Radio(
                          value: SingingCharacter.mad,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    child: Column(
                      children: [
                        Text('Perf'),
                        Radio(
                          value: SingingCharacter.perfusion,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    child: Column(
                      children: [
                        Text('PEC'),
                        Radio(
                          value: SingingCharacter.analyse,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    child: Column(
                      children: [
                        Text('CNO'),
                        Radio(
                          value: SingingCharacter.cno,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: AppButton(
              textContent: _isLoading
                  ? 'En cours...'
                  : 'Ajouter un patient', //bouton connexion
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _addPatient();
                }
              },
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  _addPatient() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var randoms = getRandomString(10);
    var id_cat = 0;
    if (_character == SingingCharacter.mad) {
      id_cat = 1;
    }
    if (_character == SingingCharacter.perfusion) {
      id_cat = 2;
    }
    if (_character == SingingCharacter.analyse) {
      id_cat = 3;
    }
    if (_character == SingingCharacter.cno) {
      id_cat = 4;
    }
    var data = {
      "id_medecin": localStorage.getString('id_medecin'),
      "id_secteur": 1,
      "fixe": patient.fixe,
      "nom": patient.nom,
      "prenoms": patient.prenom,
      "adresse": patient.adresse,
      "telephone": patient.telephone,
      "email": patient.email,
      "description": patient.description,
      "id_cat": id_cat,
      "active": 1
    };
    print(data);
    var res = await Network().authData(data, '/create_patients.php');
    var body = json.decode(res.body);
    if (body == "good") {
      print(body);
      Navigator.of(context).pop();
    } else {
      print(body);
    }
  }

  @override
  Widget build(BuildContext context) {
    //changeStatusColor(t3_app_background);
    //changeStatusColor(Colors.transparent);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
        //pour gérer la compatibilité de clavier IOS et Android
        onTap: (() => FocusScope.of(context).requestFocus(new FocusNode())),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: const Color(0xff2166ab),
          appBar: new AppBar(
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            //title: new Text("Ajouter un patient"),
            backgroundColor: Colors.transparent,
            //automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: h * 0.25,
                  child: Center(
                      child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: (h * 0.25) / 2,
                          height: (h * 0.25) / 2,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://i.imgur.com/BoN9kdC.png")))),
                      Text(
                        'Branson Hawkins',
                        style: TextStyle(
                          fontFamily: 'SF UI Display',
                          fontSize: 20,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          height: 0.65,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Soumission N°3',
                        style: TextStyle(
                          fontFamily: 'SF UI Display',
                          fontSize: 14,
                          color: const Color(0xffffffff),
                          letterSpacing: 0.21,
                          fontWeight: FontWeight.w300,
                          height: 1.9285714285714286,
                        ),
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(30.0),
                  child: editForm(context),
                ),
              ],
            ),
          ),
        ));
  }

  void _geo() async {
    final response = await http.get(
        "https://nominatim.openstreetmap.org/?format=json&addressdetails=1&q=${adresse}&format=json&limit=1");
    var body = json.decode(response.body);
    print(body[0]['lat']);
    print(body[0]['lon']);
  }

  bool inside(point, vs) {
    var x = point[0], y = point[1];

    var inside = false;
    for (var i = 0, j = vs.length - 1; i < vs.length; j = i++) {
      var xi = vs[i][0], yi = vs[i][1];
      var xj = vs[j][0], yj = vs[j][1];

      var intersect =
          ((yi > y) != (yj > y)) && (x < (xj - xi) * (y - yi) / (yj - yi) + xi);
      if (intersect) inside = !inside;
    }
    print(inside);
    return inside;
  }
}
