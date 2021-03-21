import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilyan_medical/theme3/utils/T3Constant.dart';
import 'package:ilyan_medical/theme3/utils/T3Images.dart';
import 'package:ilyan_medical/theme3/utils/colors.dart';
import 'package:ilyan_medical/theme3/utils/strings.dart';
import 'package:ilyan_medical/theme3/utils/widgets.dart';
import 'package:ilyan_medical/theme3/screen/T3SignIn.dart';
import 'package:ilyan_medical/network_utils/api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:ilyan_medical/widgets/home.dart';

class T3SignUp extends StatefulWidget {
  T3SignUp({Key key, this.title}) : super(key: key);
  final String title;

  //static var tag = "/T3SignUp";

  @override
  T3SignUpState createState() => T3SignUpState();
}

class T3SignUpState extends State<T3SignUp> {
  bool passwordVisible = false;
  bool isRemember = false;
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  var email;
  var password;
  var fname;
  var lname;
  var phone;
  var genre;
  var adresse;
  var specialite;
  var hc;
  String dropDownValue;
  String dropDownSpe;
  List<String> gender = ['Mr', 'Mdme', 'Mlle', 'Autre'];
  List<String> special = [
    'La médecine aiguë',
    'La médecine du travail',
    'La médecine générale',
    'La médecine interne',
    'La médecine nucléaire',
    'La médecine palliative',
    'La médecine physique',
    'La médecine préventive',
  ];

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  setFilters() {
    setState(() {
      dropDownValue = gender[2];
      dropDownSpe = special[2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        //pour gérer la compatibilité de clavier IOS et Android
        onTap: (() => FocusScope.of(context).requestFocus(new FocusNode())),
        child: Scaffold(
          body: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: (MediaQuery.of(context).size.height) / 3.5,
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          t3_ic_background, //image orange
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                t3_lbl_create_account, //le texte
                                style: TextStyle(
                                    fontSize: 34,
                                    fontFamily: fontBold,
                                    color: t3_white),
                              ),
                              SizedBox(height: 4),
                              Text(
                                t3_lbl_recipe_for_happiness, //sous texte
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: fontBold,
                                    color: t3_white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 45),
                      transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                      child: Image.asset(
                        logo, //t3_ic_icon, // icon du plat
                        height: 70,
                        width: 70,
                      )),
                  Padding(
                    //commence le form d'inscription

                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          DropdownButtonFormField(
                            //genre
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: 'Mr',
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            value: dropDownValue,
                            onChanged: (String Value) {
                              setState(() {
                                dropDownValue = Value;
                              });
                            },
                            items: gender
                                .map((gendertitle) => DropdownMenuItem(
                                    value: gendertitle,
                                    child: Text("$gendertitle")))
                                .toList(),

                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'Confirmez votre mot de passe';
                              }
                              password = passwordvalue;
                              return null;
                            },
                          ),

                          SizedBox(height: 16),

                          DropdownButtonFormField(
                            //specialite
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: 'Specialite',
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            value: dropDownSpe,
                            onChanged: (String Value) {
                              setState(() {
                                dropDownSpe = Value;
                              });
                            },
                            items: special
                                .map((specialitetitle) => DropdownMenuItem(
                                    value: specialitetitle,
                                    child: Text("$specialitetitle")))
                                .toList(),
                          ),
                          //nom
                          SizedBox(height: 16),
                          TextFormField(
                            style: TextStyle(
                                fontSize: textSizeLargeMedium,
                                fontFamily: fontRegular),
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: t3_user_nom,
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'Entrez votre nom';
                              }
                              password = passwordvalue;
                              return null;
                            },
                          ),
                          //prenom
                          SizedBox(height: 16),
                          TextFormField(
                            style: TextStyle(
                                fontSize: textSizeLargeMedium,
                                fontFamily: fontRegular),
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: t3_user_prenom,
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'Entrez votre prenom';
                              }
                              password = passwordvalue;
                              return null;
                            },
                          ),
                          //adresse
                          SizedBox(height: 16),
                          TextFormField(
                            style: TextStyle(
                                fontSize: textSizeLargeMedium,
                                fontFamily: fontRegular),
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: t3_lbl_adresse,
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'Entrez votre adresse';
                              }
                              password = passwordvalue;
                              return null;
                            },
                          ),
                          //email
                          SizedBox(height: 16),
                          TextFormField(
                            style: TextStyle(
                                fontSize: textSizeLargeMedium,
                                fontFamily: fontRegular),
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: t3_hint_Email,
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'Entrez votre e-mail';
                              }
                              password = passwordvalue;
                              return null;
                            },
                          ),
                          //phone
                          SizedBox(height: 16),
                          TextFormField(
                            style: TextStyle(
                                fontSize: textSizeLargeMedium,
                                fontFamily: fontRegular),
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: t3_lbl_telephone,
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'Entrez votre numéro de mobile';
                              }
                              password = passwordvalue;
                              return null;
                            },
                          ),
                          //specialité

                          //hopital
                          SizedBox(height: 16),
                          TextFormField(
                            style: TextStyle(
                                fontSize: textSizeLargeMedium,
                                fontFamily: fontRegular),
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: t3_hint_hopcli,
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'Entrez votre mot de passe';
                              }
                              password = passwordvalue;
                              return null;
                            },
                          ),
                          //pass
                          SizedBox(height: 16),
                          TextFormField(
                            style: TextStyle(
                                fontSize: textSizeLargeMedium,
                                fontFamily: fontRegular),
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: t3_hint_password,
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'Entrez votre mot de passe';
                              }
                              password = passwordvalue;
                              return null;
                            },
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            style: TextStyle(
                                fontSize: textSizeLargeMedium,
                                fontFamily: fontRegular),
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(26, 18, 4, 18),
                              hintText: t3_hint_password,
                              filled: true,
                              fillColor: t3_edit_background,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: t3_edit_background, width: 0.0),
                              ),
                            ),
                            validator: (passwordvalue) {
                              if (passwordvalue.isEmpty) {
                                return 'Confirmez votre mot de passe';
                              }
                              password = passwordvalue;
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: AppButton(
                                textContent: _isLoading
                                    ? 'En cours...'
                                    : 'Inscription', //t3_lbl_sign_in, //bouton connexion
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    _register();
                                  }
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  /* editTextStyle(t3_lbl_genre, isPassword: false),
              SizedBox(height: 16),
              editTextStyle(t3_user_nom, isPassword: false),
              SizedBox(height: 16),
              editTextStyle(t3_user_prenom, isPassword: false),
              SizedBox(height: 16),
              editTextStyle(t3_lbl_adresse, isPassword: false),
              SizedBox(height: 16),
              editTextStyle(t3_lbl_specialite, isPassword: false),
              SizedBox(height: 16),
              editTextStyle(t3_lbl_telephone, isPassword: false),
              SizedBox(height: 16),
              editTextStyle(t3_hint_hopcli, isPassword: false),
              SizedBox(height: 16),
              editTextStyle(t3_hint_Email, isPassword: false),
              SizedBox(height: 16),
              editTextStyle(t3_hint_password, isPassword: true),
              SizedBox(height: 16),
              editTextStyle(t3_hint_confirm_password, isPassword: true),
              SizedBox(height: 35),*/

                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      text(t3_lbl_already_have_account,
                          textColor: t3_textColorPrimary),
                      Container(
                        margin: EdgeInsets.only(left: 4),
                        child: GestureDetector(
                            child: Text(t3_lbl_sign_in,
                                style: TextStyle(
                                  fontSize: textSizeLargeMedium,
                                  decoration: TextDecoration.underline,
                                  color: t3_colorPrimary,
                                )),
                            onTap: () {
                              //appel de la page de connexion
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => T3SignIn()),
                              );
                            }),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                        top: 50, left: 16, right: 16, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          t3_ic_sign2, //image1
                          height: 50,
                          width: 70,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 25, left: 10),
                            child: Image.asset(
                              t3_ic_sign4, //image2
                              height: 50,
                              width: 70,
                            )),
                        Container(
                            margin: EdgeInsets.only(top: 25, left: 10),
                            child: Image.asset(
                              t3_ic_sign3, //image3
                              height: 50,
                              width: 70,
                            )),
                        Image.asset(
                          t3_ic_sign1, //image4
                          height: 80,
                          width: 80,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void _register() async {
    setState(() {
      _isLoading = true;
    });
    var data = {
      'email': email,
      'password': password,
      'phone': phone,
      'nom': fname,
      'prenoms': lname,
      'genre': genre,
      'adresse': adresse,
      'specialite': specialite,
      'hopital': hc,
    };

    var res = await Network().authData(data, '/register');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['user']));
      Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }
}
