import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:ilyan_medical/theme3/screen/T3SignIn.dart';
import 'package:ilyan_medical/theme3/screen/firstpage.dart';
import 'package:ilyan_medical/theme3/utils/T3Images.dart';
import 'package:ilyan_medical/theme3/utils/widgets.dart';

class Fistpage1 extends StatelessWidget {
  Fistpage1({
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
            bounds: Rect.fromLTWH(25.0, 503.0, 325.0, 55.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: AppButton(
                textContent: 'Commençons', //t3_lbl_sign_in, //bouton connexion
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => Fistpage()),
                  );
                }), //Fistpage
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(82.0, 283.0, 212.0, 153.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Logo-blanc' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(t3_ic_spicy),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
