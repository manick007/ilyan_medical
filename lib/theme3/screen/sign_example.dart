import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:ilyan_medical/network_utils/api.dart';
import 'package:ilyan_medical/theme3/screen/T3SignIn.dart';
import 'package:ilyan_medical/theme3/screen/T3SignUp.dart';
import 'package:ilyan_medical/theme3/screen/firstpage.dart';
import 'package:ilyan_medical/theme3/utils/T3Constant.dart';
import 'package:ilyan_medical/theme3/utils/T3Images.dart';
import 'package:ilyan_medical/theme3/utils/colors.dart';
import 'package:ilyan_medical/theme3/utils/strings.dart';
import 'package:ilyan_medical/theme3/utils/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:ilyan_medical/theme3/screen/T3BottomNavigation.dart';
import 'package:adobe_xd/page_link.dart';

class T3Sign extends StatefulWidget {
  T3Sign({Key key, this.title}) : super(key: key);
  final String title;

  @override
  T3SignState createState() => T3SignState();
}

class T3SignState extends State<T3Sign> {
  bool passwordVisible = false;
  bool isRemember = false;
  bool _isLoading = false;
  var email;
  var password;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  _showMsg(msg) {
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      //pour gérer la compatibilité de clavier IOS et Android
      onTap: (() => FocusScope.of(context).requestFocus(new FocusNode())),
      child: new Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0xff2166ab),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height) / 3.5,
                  child: Stack(
                    children: <Widget>[
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
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 110, bottom: 60),
                        child: Transform.rotate(
                          angle: 2.618,
                          child: Container(
                            width: 39.9,
                            height: 39.9,
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
                      Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(25.0, 71.0),
                              child: PageLink(
                                links: [
                                  PageLinkInfo(
                                    transition: LinkTransition.Fade,
                                    ease: Curves.easeOut,
                                    duration: 0.3,
                                    pageBuilder: () => Fistpage(),
                                  ),
                                ],
                                child: SizedBox(
                                  width: 22.0,
                                  height: 22.0,
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds:
                                            Rect.fromLTWH(0.0, 0.0, 22.0, 22.0),
                                        size: Size(22.0, 22.0),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                            color: const Color(0x4affffff),
                                          ),
                                        ),
                                      ),
                                      Pinned.fromSize(
                                        bounds:
                                            Rect.fromLTWH(4.0, 6.0, 13.0, 10.8),
                                        size: Size(22.0, 22.0),
                                        fixedWidth: true,
                                        fixedHeight: true,
                                        child: Transform.rotate(
                                          angle: 3.1416,
                                          child:
                                              // Adobe XD layer: 'right-arrow' (group)
                                              Stack(
                                            children: <Widget>[
                                              Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    0.0, 0.0, 13.0, 10.8),
                                                size: Size(13.0, 10.8),
                                                pinLeft: true,
                                                pinRight: true,
                                                pinTop: true,
                                                pinBottom: true,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(
                                                          0.0, 0.0, 13.0, 10.8),
                                                      size: Size(13.0, 10.8),
                                                      pinLeft: true,
                                                      pinRight: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      child: SvgPicture.string(
                                                        _svg_ecpn5e,
                                                        allowDrawingOutsideViewBox:
                                                            true,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 105),
                            Text(
                              'Liste de patients',
                              style: TextStyle(
                                fontFamily: 'SF UI Display',
                                fontSize: 20,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.elliptical(30, 10)),
                      color: Color(0xFFFFFFFF),
                    ),
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 30),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.fromLTRB(10, 0, 16, 0),
                          child: Text(
                            'Bienvenue ',
                            style: TextStyle(
                              fontFamily: 'SF UI Display',
                              fontSize: 30,
                              color: const Color(0xff7cd955),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.fromLTRB(10, 0, 16, 0),
                          child: Text(
                            'Hello, connectez-vous pour continuer',
                            style: TextStyle(
                              fontFamily: 'SF UI Display',
                              fontSize: 15,
                              color: const Color(0xff3c4a6d),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          //test field email et password
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),

                          child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 0, 16, 3),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Identifiant',
                                    style: TextStyle(
                                      fontFamily: 'SF UI Display',
                                      fontSize: 18,
                                      color: const Color(0x993c4a6d),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                TextFormField(
                                  //controller: email,
                                  style: TextStyle(
                                      fontSize: textSizeLargeMedium,
                                      fontFamily: fontRegular),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(26, 18, 4, 18),
                                    //hintText: 'email',
                                    filled: true,
                                    fillColor: t3_edit_background,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: const BorderSide(
                                          color: t3_edit_background,
                                          width: 0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: const BorderSide(
                                          color: t3_edit_background,
                                          width: 0.0),
                                    ),
                                  ),
                                  validator: (emailValue) {
                                    if (emailValue.isEmpty) {
                                      return 'Entrez votre e-mail';
                                    }
                                    email = emailValue;
                                    return null;
                                  },
                                ),

                                // récupération de l'email
                                SizedBox(height: 16),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 0, 16, 3),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Mot de passe',
                                    style: TextStyle(
                                      fontFamily: 'SF UI Display',
                                      fontSize: 18,
                                      color: const Color(0x993c4a6d),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                TextFormField(
                                  //controller: password,
                                  style: TextStyle(
                                      fontSize: textSizeLargeMedium,
                                      fontFamily: fontRegular),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(26, 18, 0, 18),
                                    //hintText: 'password',
                                    filled: true,
                                    fillColor: t3_edit_background,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: const BorderSide(
                                          color: t3_edit_background,
                                          width: 0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: const BorderSide(
                                          color: t3_edit_background,
                                          width: 0.0),
                                    ),
                                  ),
                                  validator: (passwordValue) {
                                    if (passwordValue.isEmpty) {
                                      return 'Entrez votre mot de passe';
                                    }
                                    password = passwordValue;
                                    return null;
                                  },
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                  child: AppButton(
                                      textContent: _isLoading
                                          ? 'En cours...'
                                          : 'Connexion', //t3_lbl_sign_in, //bouton connexion
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          _login();
                                        }
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        text(t3_lbl_forgot_password),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            text(t3_lbl_already_have_account,
                                textColor: t3_textColorPrimary),
                            Container(
                              margin: EdgeInsets.only(left: 4),
                              child: GestureDetector(
                                  child: Text('S\'inscrire',
                                      style: TextStyle(
                                        fontSize: textSizeLargeMedium,
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff7cd955),
                                      )),
                                  onTap: () {
                                    //appel de la page de connexion
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => T3SignUp()),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ],
                    )), //entete je vais placer le background ici
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _login() async {
    setState(() {
      _isLoading = true;
    });
    var data = {'email': email, 'password': password};

    var res = await Network().authData(data, '/login.php');
    var body = json.decode(res.body);
    if (body['active'] == '1') {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('id', body['id']);
      localStorage.setString('specialite', body['specialite']);
      localStorage.setString('name', body['nom']);
      localStorage.setString('prenoms', body['prenoms']);
      localStorage.setString('adresse', body['adresse']);
      localStorage.setString('email', body['email']);
      localStorage.setString('hopital', body['hopital']);
      localStorage.setString('date_naissance', body['date_naissance']);
      localStorage.setString('telephone', body['telephone']);

      Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => T3BottomNavigation()),
      );
    } else {
      _showMsg('Mauvais email ou mot de passe réessayez!');
    }

    setState(() {
      _isLoading = false;
    });
  }

  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }
}

const String _svg_ecpn5e =
    '<svg viewBox="0.0 0.0 13.0 10.8" ><path transform="translate(0.0, -41.35)" d="M 12.82704544067383 46.26178741455078 L 8.119502067565918 41.55414199829102 C 7.985122680664063 41.41976165771484 7.80601978302002 41.34600067138672 7.615047454833984 41.34600067138672 C 7.423862934112549 41.34600067138672 7.244866847991943 41.41986846923828 7.110485553741455 41.55414199829102 L 6.683076858520508 41.98165512084961 C 6.548802375793457 42.11582565307617 6.47482967376709 42.2950325012207 6.47482967376709 42.48611068725586 C 6.47482967376709 42.67708587646484 6.548802375793457 42.86233520507813 6.683076858520508 42.99650192260742 L 9.429389953613281 45.74885559082031 L 0.7042236924171448 45.74885559082031 C 0.3108334243297577 45.74885559082031 0 46.05682754516602 0 46.45032501220703 L 0 47.05471801757813 C 0 47.44821166992188 0.3108334243297577 47.78723526000977 0.7042236924171448 47.78723526000977 L 9.46054744720459 47.78723526000977 L 6.683183670043945 50.55495452880859 C 6.548909187316895 50.68933868408203 6.474936485290527 50.86367034912109 6.474936485290527 51.05474853515625 C 6.474936485290527 51.2456169128418 6.548909187316895 51.42249298095703 6.683183670043945 51.55676651000977 L 7.110592365264893 51.98290634155273 C 7.244972229003906 52.11728668212891 7.423969745635986 52.19051361083984 7.615154266357422 52.19051361083984 C 7.806126117706299 52.19051361083984 7.985228538513184 52.1163330078125 8.119608879089355 51.98195266723633 L 12.82715129852295 47.27440643310547 C 12.9618501663208 47.13960266113281 13.03592777252197 46.95965576171875 13.03539752960205 46.76836395263672 C 13.03582096099854 46.57643890380859 12.96184825897217 46.39638137817383 12.82704544067383 46.26178741455078 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
