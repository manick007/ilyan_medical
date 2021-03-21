import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilyan_medical/theme3/screen/T3BottomNavigation.dart';
import 'package:ilyan_medical/theme3/screen/T3SignIn.dart';
import 'package:ilyan_medical/theme3/screen/sign_example.dart';

class Fistpage extends StatelessWidget {
  Fistpage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2166ab),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(-15.1, 45.0, 298.1, 298.1),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child: Transform.rotate(
              angle: -0.384,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -1.0),
                    end: Alignment(0.0, 1.0),
                    colors: [
                      const Color(0x00ffffff),
                      const Color(0x03ffffff),
                      const Color(0x12ffffff),
                      const Color(0x1fffffff),
                      const Color(0x1effffff)
                    ],
                    stops: [0.0, 0.242, 0.724, 1.0, 1.0],
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(184.8, 663.1, 234.0, 234.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Transform.rotate(
              angle: 2.618,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
          Pinned.fromSize(
            bounds: Rect.fromLTWH(224.5, 619.4, 59.4, 59.4),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Transform.rotate(
              angle: 2.618,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
          Pinned.fromSize(
            bounds: Rect.fromLTWH(25.0, 252.0, 164.0, 30.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'sur Ilian Medical!',
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 19,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(25.0, 594.0, 117.0, 29.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            /*child: Text(
              'Connexion',
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),*/
            child: GestureDetector(
                child: Text(
                  'Connexion',
                  style: TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 20,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                onTap: () {
                  //appel de la page de connexion
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => T3BottomNavigation()),
                  );
                }),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(25.0, 318.0, 259.0, 120.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the ',
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(134.4, 602.8, 15.3, 12.7),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'right-arrow' (group)
                Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 15.3, 12.7),
                  size: Size(15.3, 12.7),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 15.3, 12.7),
                        size: Size(15.3, 12.7),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: SvgPicture.string(
                          _svg_dl23tj,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(25.0, 216.0, 155.0, 40.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Bienvenue ',
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 30,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_dl23tj =
    '<svg viewBox="0.0 0.0 15.3 12.7" ><path transform="translate(0.0, -41.35)" d="M 15.02264308929443 47.10322189331055 L 9.509313583374023 41.58976745605469 C 9.351932525634766 41.43238830566406 9.142171859741211 41.34600067138672 8.918510437011719 41.34600067138672 C 8.694601058959961 41.34600067138672 8.484966278076172 41.43251037597656 8.327583312988281 41.58976745605469 L 7.827014923095703 42.09046173095703 C 7.66975736618042 42.24759674072266 7.583122730255127 42.45748138427734 7.583122730255127 42.6812629699707 C 7.583122730255127 42.90492248535156 7.66975736618042 43.12187957763672 7.827014923095703 43.27901458740234 L 11.04341411590576 46.50249099731445 L 0.8247652649879456 46.50249099731445 C 0.3640385866165161 46.50249099731445 0 46.86317443847656 0 47.32402801513672 L 0 48.03187561035156 C 0 48.49272537231445 0.3640385866165161 48.88977813720703 0.8247652649879456 48.88977813720703 L 11.07990455627441 48.88977813720703 L 7.827139854431152 52.13124847412109 C 7.669882297515869 52.28863143920898 7.583247661590576 52.49280548095703 7.583247661590576 52.71659088134766 C 7.583247661590576 52.94012451171875 7.669882297515869 53.14727783203125 7.827139854431152 53.30453491210938 L 8.32770824432373 53.80361938476563 C 8.485090255737305 53.96099853515625 8.69472599029541 54.0467643737793 8.918635368347168 54.0467643737793 C 9.14229679107666 54.0467643737793 9.352055549621582 53.95988082885742 9.509438514709473 53.80249786376953 L 15.02276706695557 48.28916931152344 C 15.18052101135254 48.13129425048828 15.26728057861328 47.92053985595703 15.26665878295898 47.69650650024414 C 15.26715564727783 47.47172927856445 15.18052101135254 47.26084899902344 15.02264308929443 47.10322189331055 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
