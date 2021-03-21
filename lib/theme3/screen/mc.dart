import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Moncompte extends StatelessWidget {
  Moncompte({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2166ab),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(-16.0, 413.0, 408.0, 499.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(74.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(118.0, 99.0, 140.0, 140.0),
            size: Size(375.0, 812.0),
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(-4.0, -5.0, 147.0, 164.0),
                  size: Size(140.0, 140.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'img' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(61.0),
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 140.0, 140.0),
                  size: Size(140.0, 140.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(116.0, 236.3, 146.0, 27.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Dr. Stella Kane ',
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 20,
                color: const Color(0xffffffff),
                letterSpacing: 0.3,
                fontWeight: FontWeight.w700,
                height: 1.35,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(171.0, 288.0, 29.0, 19.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              '22%',
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 14,
                color: const Color(0xffffffff),
                letterSpacing: 0.21,
                fontWeight: FontWeight.w700,
                height: 3,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(141.0, 261.3, 90.0, 19.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Bone Specialist',
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
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(40.0, 312.0, 295.0, 7.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 295.0, 7.0),
                  size: Size(295.0, 7.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(5.0, 2.0, 147.0, 3.0),
                  size: Size(295.0, 7.0),
                  pinLeft: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: const Color(0xff2166ab),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(100.0, 349.0, 176.0, 34.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 176.0, 34.0),
                  size: Size(176.0, 34.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(17.0, 8.0, 137.0, 16.0),
                  size: Size(176.0, 34.0),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: Text(
                    'Complètez votre profile',
                    style: TextStyle(
                      fontFamily: 'SF UI Display',
                      fontSize: 12,
                      color: const Color(0xffffffff),
                      letterSpacing: 0.18,
                      fontWeight: FontWeight.w700,
                      height: 3,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(131.0, 67.0, 121.0, 26.0),
            size: Size(375.0, 812.0),
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: SingleChildScrollView(
                child: Text(
              'Mon compte',
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            )),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 719.4, 375.7, 92.6),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 375.7, 92.6),
                  size: Size(375.7, 92.6),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 375.7, 92.6),
                        size: Size(375.7, 92.6),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(35.0, 0.0, 55.0, 54.0),
                              size: Size(375.7, 92.6),
                              pinLeft: true,
                              pinTop: true,
                              fixedWidth: true,
                              fixedHeight: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x363c4a6d),
                                      offset: Offset(0, 4),
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 11.1, 375.7, 81.5),
                              size: Size(375.7, 92.6),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: SvgPicture.string(
                                _svg_x5z44p,
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
                  bounds: Rect.fromLTWH(176.7, 44.2, 24.1, 19.1),
                  size: Size(375.7, 92.6),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'folder' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 2.5, 21.6, 16.6),
                        size: Size(24.1, 19.1),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 21.6, 16.6),
                              size: Size(21.6, 16.6),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 21.6, 16.6),
                                    size: Size(21.6, 16.6),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_wor09p,
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
                        bounds: Rect.fromLTWH(2.6, 0.0, 21.6, 16.5),
                        size: Size(24.1, 19.1),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 21.6, 16.5),
                              size: Size(21.6, 16.5),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 21.6, 16.5),
                                    size: Size(21.6, 16.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_wh5e1e,
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
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(301.5, 44.7, 22.1, 22.1),
                  size: Size(375.7, 92.6),
                  pinRight: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'settings' (shape)
                      SvgPicture.string(
                    _svg_ctr6xv,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(49.8, 10.3, 23.5, 28.3),
                  size: Size(375.7, 92.6),
                  pinLeft: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'doc icon' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 23.5, 28.3),
                        size: Size(23.5, 28.3),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: SvgPicture.string(
                          _svg_5doduo,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(17.7, 17.8, 2.3, 2.3),
                        size: Size(23.5, 28.3),
                        pinRight: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_9758bm,
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
            bounds: Rect.fromLTWH(25.0, 435.0, 325.0, 244.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 325.0, 50.0),
                  size: Size(325.0, 244.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 325.0, 50.0),
                        size: Size(325.0, 50.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'card bg' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x0a000000),
                                offset: Offset(0, 10),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(22.5, 12.0, 25.5, 25.5),
                        size: Size(325.0, 50.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Page-1' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 25.5, 25.5),
                              size: Size(25.5, 25.5),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: '003---Call' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 25.5, 25.5),
                                    size: Size(25.5, 25.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child:
                                        // Adobe XD layer: 'Shape' (shape)
                                        SvgPicture.string(
                                      _svg_7m6m4j,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(11.9, 4.4, 9.2, 9.2),
                                    size: Size(25.5, 25.5),
                                    fixedWidth: true,
                                    fixedHeight: true,
                                    child:
                                        // Adobe XD layer: 'Shape' (shape)
                                        SvgPicture.string(
                                      _svg_dekoh3,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(11.9, 0.0, 13.6, 13.6),
                                    size: Size(25.5, 25.5),
                                    pinRight: true,
                                    pinTop: true,
                                    fixedWidth: true,
                                    fixedHeight: true,
                                    child:
                                        // Adobe XD layer: 'Shape' (shape)
                                        SvgPicture.string(
                                      _svg_46pb01,
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
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 65.0, 325.0, 50.0),
                  size: Size(325.0, 244.0),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 325.0, 50.0),
                        size: Size(325.0, 50.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'card bg' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x0a000000),
                                offset: Offset(0, 10),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(22.2, 15.0, 25.5, 19.2),
                        size: Size(325.0, 50.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'envelope' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 25.5, 19.2),
                              size: Size(25.5, 19.2),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 25.5, 19.2),
                                    size: Size(25.5, 19.2),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              0.3, 0.0, 24.8, 11.7),
                                          size: Size(25.5, 19.2),
                                          pinLeft: true,
                                          pinRight: true,
                                          pinTop: true,
                                          fixedHeight: true,
                                          child: SvgPicture.string(
                                            _svg_89s7o,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              0.0, 3.1, 25.5, 16.0),
                                          size: Size(25.5, 19.2),
                                          pinLeft: true,
                                          pinRight: true,
                                          pinTop: true,
                                          pinBottom: true,
                                          child: SvgPicture.string(
                                            _svg_5j8l1u,
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
                          ],
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(81.0, 13.0, 228.0, 24.0),
                        size: Size(325.0, 50.0),
                        pinRight: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'Yug@mondigitalstudio.com',
                          style: TextStyle(
                            fontFamily: 'SF UI Display',
                            fontSize: 18,
                            color: const Color(0xff3c4a6d),
                            letterSpacing: 0.27,
                            height: 1.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 129.0, 325.0, 50.0),
                  size: Size(325.0, 244.0),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 325.0, 50.0),
                        size: Size(325.0, 50.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'card bg' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x0a000000),
                                offset: Offset(0, 10),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(23.4, 13.0, 24.3, 24.3),
                        size: Size(325.0, 50.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'home (2)' (shape)
                            SvgPicture.string(
                          _svg_60u02e,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(81.0, 13.0, 157.0, 24.0),
                        size: Size(325.0, 50.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'CHU de Strasbourg',
                          style: TextStyle(
                            fontFamily: 'SF UI Display',
                            fontSize: 18,
                            color: const Color(0xff3c4a6d),
                            letterSpacing: 0.27,
                            height: 1.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 194.0, 325.0, 50.0),
                  size: Size(325.0, 244.0),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 325.0, 50.0),
                        size: Size(325.0, 50.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'card bg' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x0a000000),
                                offset: Offset(0, 10),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(26.0, 12.0, 22.7, 25.8),
                        size: Size(325.0, 50.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'location' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(3.0, 0.0, 16.6, 23.1),
                              size: Size(22.7, 25.8),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 16.6, 23.1),
                                    size: Size(16.6, 23.1),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              0.0, 0.0, 16.6, 23.1),
                                          size: Size(16.6, 23.1),
                                          pinLeft: true,
                                          pinRight: true,
                                          pinTop: true,
                                          pinBottom: true,
                                          child: SvgPicture.string(
                                            _svg_fjoqlw,
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
                              bounds: Rect.fromLTWH(0.0, 17.4, 22.7, 8.4),
                              size: Size(22.7, 25.8),
                              pinLeft: true,
                              pinRight: true,
                              pinBottom: true,
                              fixedHeight: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 22.7, 8.4),
                                    size: Size(22.7, 8.4),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              0.0, 0.0, 22.7, 8.4),
                                          size: Size(22.7, 8.4),
                                          pinLeft: true,
                                          pinRight: true,
                                          pinTop: true,
                                          pinBottom: true,
                                          child: SvgPicture.string(
                                            _svg_izmb57,
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
                          ],
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(83.0, 13.0, 89.0, 24.0),
                        size: Size(325.0, 50.0),
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'Strasbourg',
                          style: TextStyle(
                            fontFamily: 'SF UI Display',
                            fontSize: 18,
                            color: const Color(0xff3c4a6d),
                            letterSpacing: 0.27,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(295.0, 673.9, 44.1, 44.1),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 44.1, 44.1),
                  size: Size(44.1, 44.1),
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff2166ab),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x852166ab),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(15.0, 15.0, 14.2, 14.2),
                  size: Size(44.1, 44.1),
                  fixedWidth: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'pencil' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 2.4, 11.8, 11.8),
                        size: Size(14.2, 14.2),
                        pinLeft: true,
                        pinBottom: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_gptwl8,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(9.7, 0.0, 4.6, 4.6),
                        size: Size(14.2, 14.2),
                        pinRight: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_myl6dd,
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
            bounds: Rect.fromLTWH(26.0, 28.0, 27.4, 16.6),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'menu' (group)
                Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 8.3, 27.4, 1.0),
                  size: Size(27.4, 16.6),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_w3lsgb,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 16.6, 13.7, 1.0),
                  size: Size(27.4, 16.6),
                  pinLeft: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_gfauhh,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(13.2, 0.0, 13.7, 1.0),
                  size: Size(27.4, 16.6),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_n1gh0g,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(326.0, 25.0, 24.0, 24.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'notification icon' (group)
                Stack(
              children: <Widget>[
                Container(),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(13.0, 0.0, 8.0, 8.0),
                  size: Size(24.0, 24.0),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff0eb214),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(101.0, 448.0, 129.0, 21.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              '004915218295228',
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 16,
                color: const Color(0xff3c4a6d),
                height: 1.125,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_x5z44p =
    '<svg viewBox="0.0 731.1 375.7 81.5" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(-484.0, -1101.0)" d="M 484 1836.800048828125 C 484 1836.800048828125 504.6571655273438 1838.221313476563 516.1143188476563 1863.228515625 C 527.5714721679688 1888.235717773438 564.1428833007813 1889.8857421875 576.9000244140625 1861 C 589.6571655273438 1832.1142578125 624.3999633789063 1832.085693359375 624.3999633789063 1832.085693359375 L 859.6500244140625 1834.400024414063 L 859.6500244140625 1913.599975585938 L 484 1913.599975585938 L 484 1836.800048828125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_wor09p =
    '<svg viewBox="0.0 0.0 21.6 16.6" ><path transform="translate(0.0, -85.32)" d="M 19.63826370239258 87.48365020751953 L 10.93117809295654 87.48365020751953 L 9.199225425720215 85.42518615722656 C 9.140960693359375 85.35514068603516 9.053653717041016 85.31587219238281 8.962619781494141 85.31871032714844 L 1.937799692153931 85.31871032714844 C 0.8652666211128235 85.32651519775391 0 86.19817352294922 0 87.27070617675781 L 0 99.93146514892578 C 0.001301330747082829 101.0076675415039 0.8734294772148132 101.8797988891602 1.94963002204895 101.8810958862305 L 19.63826370239258 101.8810958862305 C 20.71446418762207 101.8797988891602 21.58659172058105 101.0076675415039 21.58789253234863 99.93146514892578 L 21.58789253234863 89.43328094482422 C 21.58659172058105 88.35707855224609 20.71446418762207 87.48494720458984 19.63826370239258 87.48365020751953 Z" fill="#2166ab" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wh5e1e =
    '<svg viewBox="0.0 0.0 21.6 16.5" ><path transform="translate(-43.4, -42.68)" d="M 63.02880096435547 44.84365081787109 L 54.3193473815918 44.84365081787109 L 52.58739471435547 42.78517913818359 C 52.52913284301758 42.71514511108398 52.44182205200195 42.67586898803711 52.35079193115234 42.67870712280273 L 45.32833862304688 42.67870712280273 C 44.35517883300781 42.68030548095703 43.53226470947266 43.39923095703125 43.40000152587891 44.36334228515625 L 49.80491256713867 44.36334228515625 C 50.14077377319336 44.36251068115234 50.45966339111328 44.51074600219727 50.67562484741211 44.76793670654297 L 52.1544075012207 46.52591705322266 L 60.47109603881836 46.52591705322266 C 62.00932312011719 46.52851867675781 63.25570678710938 47.77489471435547 63.2583122253418 49.31312561035156 L 63.2583122253418 59.22217559814453 C 64.23359680175781 59.10050201416016 64.96583557128906 58.27196502685547 64.96659851074219 57.28910827636719 L 64.96659851074219 46.79091644287109 C 64.96405792236328 45.72021484375 64.09944152832031 44.85145950317383 63.02880096435547 44.84365081787109 Z" fill="#2166ab" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5doduo =
    '<svg viewBox="0.0 0.0 23.5 28.3" ><path transform="translate(-6.39, -7.1)" d="M 29.87432670593262 29.96553039550781 C 29.45464134216309 26.04328918457031 27.10299301147461 22.5901050567627 23.60715484619141 20.76275634765625 C 23.57759094238281 20.74550437927246 23.54384803771973 20.73673057556152 23.50962448120117 20.73740005493164 C 23.53303337097168 20.76470565795898 23.55546379089355 20.79298973083496 23.58082008361816 20.82029914855957 C 24.48803901672363 21.78370094299316 25.11757278442383 22.97469711303711 25.40265083312988 24.2669506072998 C 25.42508125305176 24.36447906494141 25.47287178039551 24.39276123046875 25.56259536743164 24.40641593933105 C 26.40476608276367 24.54233741760254 27.02576446533203 25.26638984680176 27.03179740905762 26.11943244934082 C 27.03783226013184 26.97248077392578 26.4271411895752 27.70524406433105 25.58698081970215 27.85306739807129 C 24.68569374084473 28.01277160644531 23.81386756896973 27.45003128051758 23.5882568359375 26.56294631958008 C 23.36264610290527 25.67586708068848 23.85968399047852 24.76498222351074 24.72775459289551 24.47468566894531 L 24.85259056091309 24.4298210144043 C 24.45879745483398 22.63772583007813 23.39412689208984 21.06427001953125 21.87700080871582 20.03227043151855 L 22.00573921203613 19.86744689941406 C 22.83765602111816 18.79463577270508 23.36333465576172 17.58625984191895 23.6881046295166 16.28035545349121 C 23.83725738525391 15.64551734924316 23.94090270996094 15.0008430480957 23.99824142456055 14.35124588012695 C 24.06060409545898 13.84627342224121 24.07529830932617 13.3365535736084 24.04212951660156 12.82882690429688 C 23.94548225402832 11.55348587036133 23.46238327026367 10.33790397644043 22.6572265625 9.344141006469727 C 21.84851455688477 8.315336227416992 20.71328163146973 7.592915534973145 19.43879127502441 7.296045303344727 C 19.15693664550781 7.228750228881836 18.86532592773438 7.204368114471436 18.57761764526367 7.160480499267578 C 18.54738235473633 7.160480499267578 18.51812553405762 7.146826267242432 18.48886680603027 7.139999389648438 L 17.79056358337402 7.139999389648438 C 17.57990264892578 7.170232772827148 17.36729049682617 7.192664623260498 17.1585807800293 7.229725360870361 C 15.96689128875732 7.432310581207275 14.87143802642822 8.011312484741211 14.03279781341553 8.881855964660645 C 12.95998573303223 9.980024337768555 12.37481594085693 11.3083610534668 12.2382755279541 12.83760452270508 C 12.19612121582031 13.33744049072266 12.212158203125 13.84048271179199 12.2860631942749 14.33661842346191 C 12.36896324157715 14.90423011779785 12.4245548248291 15.47769546508789 12.54354000091553 16.03750991821289 C 12.85367870330811 17.48775672912598 13.42909622192383 18.82096862792969 14.36829376220703 19.98350715637207 C 14.37702369689941 19.99660873413086 14.38484382629395 20.01029777526855 14.39170074462891 20.02446746826172 C 14.24150657653809 20.07908248901367 14.09911441802979 20.13955116271973 13.94599723815918 20.18636512756348 C 13.72177791595459 20.26204681396484 13.51791381835938 20.38816833496094 13.35009670257568 20.55502128601074 C 12.3748140335083 21.46886253356934 11.7808666229248 22.60311698913574 11.50291061401367 23.89341735839844 C 11.39660549163818 24.39276123046875 11.359543800354 24.90673828125 11.29322624206543 25.41388320922852 C 11.28981494903564 25.47072601318359 11.28981494903564 25.52771949768066 11.2932243347168 25.58456039428711 C 12.29971694946289 25.73475074768066 12.90926933288574 26.38136291503906 13.35302352905273 27.2220573425293 C 13.74641990661621 27.9970817565918 13.9471492767334 28.85553169250488 13.93819236755371 29.72463607788086 C 13.93446636199951 29.77572822570801 13.91145610809326 29.82349014282227 13.87382411956787 29.85824775695801 C 13.72168064117432 29.99673843383789 13.56270885467529 30.12645149230957 13.42519378662109 30.24348640441895 C 13.44824981689453 30.36132621765137 13.45774173736572 30.48141479492188 13.45347881317139 30.60141372680664 C 13.43418979644775 30.72491645812988 13.36337566375732 30.83442115783691 13.2586612701416 30.90268325805664 C 13.1539478302002 30.97094345092773 13.02517604827881 30.99153900146484 12.90439510345459 30.95934677124023 C 12.78430843353271 30.9288501739502 12.68177604675293 30.85085296630859 12.62034606933594 30.74325561523438 C 12.55891609191895 30.63566207885742 12.54386520385742 30.50771522521973 12.57865047454834 30.38880157470703 C 12.61434078216553 30.26823616027832 12.69878768920898 30.16806983947754 12.81158256530762 30.11250495910645 C 12.92437648773193 30.05694198608398 13.05525684356689 30.0510368347168 13.1725959777832 30.09621620178223 C 13.22712516784668 30.12771606445313 13.29591274261475 30.1193675994873 13.34132194519043 30.07573509216309 C 13.3577823638916 30.05930709838867 13.37690830230713 30.04578590393066 13.39788722991943 30.0357494354248 C 13.69047355651855 29.91286277770996 13.75094127655029 29.70317840576172 13.71973133087158 29.39791488647461 C 13.6222038269043 28.40312576293945 13.35790252685547 27.47660446166992 12.69275951385498 26.70223045349121 C 12.38728332519531 26.3216381072998 11.9615421295166 26.05615234375 11.48535823822021 25.94931411743164 C 10.91384124755859 25.8322811126709 10.40084171295166 25.98149871826172 9.942458152770996 26.33162689208984 C 9.444089889526367 26.71296119689941 9.120294570922852 27.22400665283203 8.888177871704102 27.7945499420166 C 8.649429321289063 28.40430641174316 8.523202896118164 29.05229377746582 8.515618324279785 29.70707893371582 C 8.507110595703125 29.76914405822754 8.538274765014648 29.82991790771484 8.59364128112793 29.85922813415527 C 8.650107383728027 29.89335060119629 8.704494476318359 29.9308032989502 8.756515502929688 29.97138023376465 C 8.849424362182617 30.05714988708496 8.977710723876953 30.09339141845703 9.101764678955078 30.06890869140625 C 9.310979843139648 30.03533172607422 9.512055397033691 30.16420364379883 9.568925857543945 30.36832427978516 C 9.636115074157715 30.56521224975586 9.56135368347168 30.78260612487793 9.387276649475098 30.89652442932129 C 9.213199615478516 31.01044273376465 8.98405647277832 30.99192810058594 8.830526351928711 30.85154151916504 C 8.676996231079102 30.71115112304688 8.638105392456055 30.48457717895508 8.73603343963623 30.301025390625 C 8.749687194824219 30.27371978759766 8.766266822814941 30.24738693237305 8.784797668457031 30.21520233154297 C 8.644355773925781 30.09524345397949 8.502941131591797 29.98015785217285 8.368350982666016 29.85727500915527 C 8.331874847412109 29.82612800598145 8.308817863464355 29.78211212158203 8.303981781005859 29.73438835144043 C 8.31471061706543 28.67620468139648 8.548778533935547 27.67848968505859 9.146627426147461 26.79000663757324 C 9.516260147094727 26.24092292785645 9.991223335266113 25.82057571411133 10.64661407470703 25.6372241973877 C 10.67684745788574 25.62942123413086 10.70708084106445 25.56602668762207 10.7090311050415 25.52701568603516 C 10.73655414581299 24.99195671081543 10.80535316467285 24.4598217010498 10.91481590270996 23.93535232543945 C 11.17716693878174 22.73185157775879 11.68333911895752 21.65319061279297 12.53573703765869 20.75007629394531 C 12.5499210357666 20.73564910888672 12.55674457550049 20.71553802490234 12.55426788330078 20.69545936584473 C 12.34653282165527 20.81151962280273 12.13489532470703 20.92172622680664 11.93106174468994 21.04363632202148 C 9.741550445556641 22.36124420166016 8.194750785827637 24.22501182556152 7.237022876739502 26.58519744873047 C 6.800178050994873 27.6700496673584 6.521644592285156 28.81209945678711 6.409980297088623 29.97625923156738 L 6.441191673278809 35.39590835571289 L 29.8382396697998 35.39590835571289 L 29.8382396697998 30.1049976348877 L 29.8382396697998 30.1049976348877 C 29.86548042297363 30.0638313293457 29.87818145751953 30.01473999023438 29.87432670593262 29.96553039550781 Z M 14.79936981201172 20.48772621154785 C 16.76749038696289 22.45779991149902 19.36369514465332 22.42756462097168 21.27915191650391 20.68278312683105 L 18.02755737304688 24.97403335571289 C 16.94759368896484 23.47534370422363 15.87153053283691 21.97991180419922 14.79936981201172 20.48772621154785 Z M 22.92738151550293 29.29941368103027 L 22.92738151550293 30.2990779876709 L 21.76581954956055 30.2990779876709 L 21.76581954956055 31.46941947937012 L 20.76615333557129 31.46941947937012 L 20.76615333557129 30.3068790435791 L 19.60361671447754 30.3068790435791 L 19.60361671447754 29.30526542663574 L 20.76225280761719 29.30526542663574 L 20.76225280761719 28.14467811584473 L 21.75801849365234 28.14467811584473 L 21.75801849365234 29.30136299133301 L 22.92738151550293 29.29941368103027 Z M 14.16055870056152 18.34210395812988 C 13.60046577453613 17.33713912963867 13.23453998565674 16.2357234954834 13.08189678192139 15.09538841247559 C 13.05653858184814 14.92276000976563 13.03898334503174 14.7481861114502 13.0185022354126 14.57555770874023 C 13.0185022354126 14.5687313079834 13.0185022354126 14.5609302520752 13.02923011779785 14.54044914245605 C 13.31438064575195 14.6152172088623 13.58411312103271 14.73968505859375 13.82603740692139 14.90813064575195 C 13.79872798919678 14.6623592376709 13.7675199508667 14.43414306640625 13.74801349639893 14.2049503326416 C 13.68071842193604 13.43642807006836 13.64365863800049 12.66790390014648 13.83188819885254 11.91108512878418 C 13.89266586303711 11.70387840270996 13.97402000427246 11.50327110290527 14.07473468780518 11.3122615814209 C 14.12226676940918 11.23215484619141 14.18255233764648 11.16034126281738 14.25321197509766 11.09964942932129 C 14.35278224945068 10.97919845581055 14.52496814727783 10.94864082336426 14.65990257263184 11.02747917175293 C 15.7377405166626 11.50650787353516 16.89523315429688 11.78099822998047 18.07339668273926 11.83696365356445 C 19.12962913513184 11.88085174560547 20.31654930114746 11.688720703125 21.33084297180176 10.96896171569824 C 21.33669471740723 10.96896171569824 21.3464469909668 10.97481346130371 21.34937286376953 10.98066520690918 C 21.82140922546387 11.76089286804199 22.24468421936035 12.56062507629395 22.49045372009277 13.44228172302246 C 22.60940933227539 13.79288482666016 22.62565231323242 14.17019081115723 22.53726768493652 14.52972221374512 L 23.3174934387207 13.63245964050293 L 23.34382629394531 13.63245964050293 C 23.33505058288574 13.77972984313965 23.33114814758301 13.92504692077637 23.31651878356934 14.07328987121582 C 23.26512908935547 14.73900413513184 23.1650562286377 15.40006637573242 23.01710891723633 16.0511646270752 C 22.71671867370605 17.24686241149902 22.23687934875488 18.35673332214355 21.4517765045166 19.31933784484863 C 20.92805099487305 19.9601001739502 20.30776977539063 20.48187637329102 19.53144264221191 20.79104042053223 C 18.35232543945313 21.2611255645752 17.21904754638672 21.13726615905762 16.14330673217773 20.48187637329102 C 15.27823352813721 19.96107482910156 14.654052734375 19.21010589599609 14.16055870056152 18.34210395812988 Z" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9758bm =
    '<svg viewBox="17.7 17.9 2.3 2.3" ><path transform="translate(-170.34, -172.2)" d="M 188.0818023681641 191.2693786621094 C 188.1049346923828 191.9004211425781 188.6330261230469 192.3945007324219 189.2642211914063 192.3756408691406 C 189.8954162597656 192.3567810058594 190.39306640625 191.8320617675781 190.3784942626953 191.2007446289063 C 190.3639068603516 190.5694580078125 189.8425598144531 190.0682373046875 189.211181640625 190.0785522460938 C 188.9021911621094 190.082763671875 188.6080322265625 190.2116088867188 188.3953857421875 190.4358215332031 C 188.1827545166016 190.6600036621094 188.0696716308594 190.9605712890625 188.0818023681641 191.2693786621094 Z" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ctr6xv =
    '<svg viewBox="301.5 764.1 22.1 22.1" ><path transform="translate(301.49, 764.09)" d="M 20.89526176452637 8.653621673583984 L 19.1634349822998 8.433457374572754 C 19.02064895629883 7.994050979614258 18.84470367431641 7.570306301116943 18.63928031921387 7.167747974395752 L 19.70877456665039 5.790575504302979 C 20.14173126220703 5.23325777053833 20.0910701751709 4.446564674377441 19.59638977050781 3.967547416687012 L 18.14552116394043 2.516679763793945 C 17.66189956665039 2.017396926879883 16.87520599365234 1.967652916908264 16.31696891784668 2.399688959121704 L 14.94163608551025 3.469185590744019 C 14.53907680511475 3.263761281967163 14.11533164978027 3.087815046310425 13.67500591278076 2.94503116607666 L 13.45484161376953 1.215965151786804 C 13.37193489074707 0.5223119854927063 12.78329753875732 -4.76837158203125e-07 12.08596038818359 -4.76837158203125e-07 L 10.02250289916992 -4.76837158203125e-07 C 9.325165748596191 -4.76837158203125e-07 8.736527442932129 0.5223119258880615 8.653620719909668 1.213201522827148 L 8.433457374572754 2.94503116607666 C 7.993130207061768 3.087815046310425 7.56938362121582 3.262840032577515 7.166825294494629 3.469185590744019 L 5.790573120117188 2.399688959121704 C 5.234177589416504 1.967652797698975 4.447484970092773 2.017396926879883 3.967546939849854 2.512073755264282 L 2.516678810119629 3.962020635604858 C 2.017395734786987 4.446564674377441 1.966730952262878 5.23325777053833 2.399688005447388 5.791495800018311 L 3.46918511390686 7.167747974395752 C 3.262839555740356 7.570306301116943 3.087814092636108 7.994050979614258 2.945030212402344 8.433457374572754 L 1.215964198112488 8.653621673583984 C 0.5223110318183899 8.736528396606445 -1.430511474609375e-06 9.325165748596191 -1.430511474609375e-06 10.02250385284424 L -1.430511474609375e-06 12.08596038818359 C -1.430511474609375e-06 12.78329849243164 0.5223109722137451 13.37193584442139 1.213200688362122 13.45484256744385 L 2.945030212402344 13.67500686645508 C 3.087814092636108 14.11441230773926 3.263760566711426 14.53815937042236 3.46918511390686 14.94071578979492 L 2.399688005447388 16.31789016723633 C 1.966730833053589 16.87520599365234 2.017395734786987 17.66189956665039 2.512072801589966 18.14091682434082 L 3.96294093132019 19.5917854309082 C 4.447484970092773 20.09014701843262 5.233256340026855 20.13989067077637 5.791494369506836 19.70785522460938 L 7.167746543884277 18.63835906982422 C 7.570305347442627 18.84470367431641 7.994050025939941 19.02065086364746 8.433457374572754 19.16251373291016 L 8.653620719909668 20.89065742492676 C 8.736527442932129 21.58615112304688 9.325165748596191 22.10846519470215 10.02250289916992 22.10846519470215 L 12.08596038818359 22.10846519470215 C 12.78329753875732 22.10846519470215 13.37193489074707 21.58615493774414 13.45484161376953 20.895263671875 L 13.67500591278076 19.1634349822998 C 14.11441230773926 19.02065086364746 14.53815650939941 18.84470367431641 14.94071578979492 18.63928031921387 L 16.31789016723633 19.70877647399902 C 16.87520599365234 20.1417350769043 17.66189956665039 20.0910701751709 18.14091682434082 19.59639167785645 L 19.5917854309082 18.14552307128906 C 20.0910701751709 17.66097831726074 20.1417350769043 16.87520790100098 19.70877647399902 16.31696891784668 L 18.63928031921387 14.94071674346924 C 18.84562683105469 14.53815937042236 19.02157211303711 14.11441326141357 19.1634349822998 13.67500782012939 L 20.89158058166504 13.45484447479248 C 21.58523368835449 13.37193775177002 22.1075439453125 12.78330039978027 22.1075439453125 12.08596229553223 L 22.1075439453125 10.02250576019287 C 22.10846519470215 9.325167655944824 21.58615493774414 8.736530303955078 20.895263671875 8.653623580932617 Z M 11.05423259735107 15.6601619720459 C 8.514522552490234 15.6601619720459 6.448301792144775 13.59394264221191 6.448301792144775 11.05423259735107 C 6.448301792144775 8.514522552490234 8.514522552490234 6.448301792144775 11.05423259735107 6.448301792144775 C 13.59394264221191 6.448301792144775 15.6601619720459 8.514522552490234 15.6601619720459 11.05423259735107 C 15.6601619720459 13.59394264221191 13.59394264221191 15.6601619720459 11.05423259735107 15.6601619720459 Z" fill="#2166ab" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7m6m4j =
    '<svg viewBox="0.0 0.0 25.5 25.5" ><path transform="translate(-1.0, -0.03)" d="M 11.57284450531006 14.99604415893555 C 9.135330200195313 12.55853080749512 8.584952354431152 10.12101745605469 8.460786819458008 9.144425392150879 C 8.426091194152832 8.874395370483398 8.519016265869141 8.603597640991211 8.712199211120605 8.411762237548828 L 10.68475341796875 6.440088272094727 C 10.97491931915283 6.150101661682129 11.02641201019287 5.698169231414795 10.80891895294189 5.350339412689209 L 7.66824197769165 0.4735493063926697 C 7.427623271942139 0.08839435875415802 6.933571338653564 -0.05061308667063713 6.527418613433838 0.1525688767433167 L 1.485515356063843 2.527120113372803 C 1.157075762748718 2.688846588134766 0.9638934731483459 3.037804841995239 1.001182675361633 3.402001142501831 C 1.265364050865173 5.91172456741333 2.359515905380249 12.08124160766602 8.422479629516602 18.14464950561523 C 14.48544311523438 24.20805549621582 20.65407943725586 25.3017635345459 23.16512680053711 25.56594657897949 C 23.52931976318359 25.60323715209961 23.87828063964844 25.41005516052246 24.04000663757324 25.08161544799805 L 26.41455841064453 20.03971099853516 C 26.61698150634766 19.63443565368652 26.47889137268066 19.1417064666748 26.09534072875977 18.90065002441406 L 21.21854972839355 15.76085090637207 C 20.87091827392578 15.54313182830811 20.41900634765625 15.59425735473633 20.12880325317383 15.88413619995117 L 18.15712738037109 17.85669136047363 C 17.96529388427734 18.04987525939941 17.69449234008789 18.14279937744141 17.42446327209473 18.10810279846191 C 16.44787406921387 17.98393821716309 14.01035976409912 17.43356132507324 11.57284545898438 14.99604415893555 Z" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dekoh3 =
    '<svg viewBox="11.9 4.4 9.2 9.2" ><path transform="translate(-16.11, -5.6)" d="M 36.36574554443359 19.24635124206543 C 35.87940216064453 19.24635124206543 35.48513793945313 18.85209083557129 35.48513793945313 18.36574554443359 C 35.48101425170898 14.71987056732178 32.52648162841797 11.76534938812256 28.88060569763184 11.76121044158936 C 28.39426040649414 11.76121044158936 28 11.36695003509521 28 10.88060569763184 C 28 10.39426040649414 28.39426040649414 10 28.88060569763184 10 C 33.49876022338867 10.00509548187256 37.24124145507813 13.74758720397949 37.24635314941406 18.36574554443359 C 37.24635314941406 18.85209083557129 36.85208892822266 19.24635124206543 36.36574554443359 19.24635124206543 Z" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_46pb01 =
    '<svg viewBox="11.9 0.0 13.6 13.6" ><path transform="translate(-16.11, 0.0)" d="M 40.76877212524414 13.64937496185303 C 40.28242874145508 13.64937496185303 39.88816833496094 13.25511455535889 39.88816833496094 12.76877021789551 C 39.88137435913086 6.692288875579834 34.95708465576172 1.767990469932556 28.88060569763184 1.761209726333618 C 28.39426040649414 1.761209726333618 28 1.366949200630188 28 0.8806048631668091 C 28 0.3942604660987854 28.39426040649414 0 28.88060569763184 0 C 35.92936325073242 0.007765130139887333 41.64162445068359 5.72001314163208 41.64937591552734 12.76877021789551 C 41.64937591552734 13.00232124328613 41.55659866333008 13.2263069152832 41.39145278930664 13.39144992828369 C 41.22631072998047 13.55659580230713 41.00232315063477 13.64937400817871 40.76877212524414 13.64937400817871 Z" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_89s7o =
    '<svg viewBox="0.3 0.0 24.8 11.7" ><path transform="translate(-6.57, -64.0)" d="M 7.101943969726563 65.55409240722656 C 10.60707950592041 68.52253723144531 16.75750541687012 73.74497985839844 18.56519317626953 75.37333679199219 C 18.80786323547363 75.59310913085938 19.06814384460449 75.70484924316406 19.33834648132324 75.70484924316406 C 19.60800170898438 75.70484924316406 19.86783409118652 75.59416198730469 20.10995674133301 75.37542724609375 C 21.91918754577637 73.74546813964844 28.06961250305176 68.52253723144531 31.57479667663574 65.55409240722656 C 31.79302406311035 65.36962890625 31.82629585266113 65.04539489746094 31.64961433410645 64.81988525390625 C 31.2411937713623 64.29878234863281 30.63224601745605 63.99999618530273 29.97960090637207 63.99999618530273 L 8.697088241577148 63.99999618530273 C 8.04449462890625 63.99999618530273 7.435497283935547 64.29878234863281 7.027122497558594 64.8199462890625 C 6.850443840026855 65.04539489746094 6.88371467590332 65.36962890625 7.101943969726563 65.55409240722656 Z" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5j8l1u =
    '<svg viewBox="0.0 3.1 25.5 16.0" ><path transform="translate(0.0, -123.3)" d="M 25.23044586181641 126.4611434936523 C 25.04184341430664 126.3733596801758 24.81997299194336 126.4039840698242 24.66304969787598 126.5380630493164 C 20.77592658996582 129.8332824707031 15.81486320495605 134.0571136474609 14.25398826599121 135.4636077880859 C 13.37792873382568 136.2544097900391 12.16207981109619 136.2544097900391 11.28397560119629 135.4625549316406 C 9.620244979858398 133.9635162353516 4.04913854598999 129.2274627685547 0.8760102987289429 126.5380020141602 C 0.7180372476577759 126.403923034668 0.4956678748130798 126.3743515014648 0.3086141645908356 126.4610977172852 C 0.1205623298883438 126.5484390258789 0 126.7365341186523 0 126.9438400268555 L 0 140.3244018554688 C 0 141.4981994628906 0.9544724822044373 142.4526824951172 2.128271579742432 142.4526824951172 L 23.41083717346191 142.4526824951172 C 24.58458518981934 142.4526824951172 25.53906059265137 141.4981994628906 25.53906059265137 140.3244018554688 L 25.53906059265137 126.9438400268555 C 25.53906059265137 126.7365341186523 25.41849899291992 126.5479354858398 25.23044586181641 126.4611434936523 Z" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_60u02e =
    '<svg viewBox="48.4 583.0 24.3 24.3" ><path transform="translate(48.36, 583.0)" d="M 23.68474578857422 10.58661556243896 C 23.6841869354248 10.58605670928955 23.68362998962402 10.58549976348877 23.68307113647461 10.58494186401367 L 13.75379085540771 0.6560097932815552 C 13.33055973052979 0.2325938791036606 12.76786136627197 -0.0006563019123859704 12.16932487487793 -0.0006563019123859704 C 11.57078552246094 -0.0006563019123859704 11.00808334350586 0.2324079871177673 10.5846700668335 0.6558244228363037 L 0.6605683565139771 10.57971858978271 C 0.6572255492210388 10.5830602645874 0.6538828015327454 10.58658790588379 0.6505399942398071 10.58993148803711 C -0.2185806483030319 11.46406173706055 -0.2170925885438919 12.88232231140137 0.6548113822937012 13.75422382354736 C 1.053157448768616 14.15275382995605 1.579270243644714 14.38359260559082 2.141781330108643 14.40773296356201 C 2.164623498916626 14.40996170043945 2.187651395797729 14.4110746383667 2.210864782333374 14.4110746383667 L 2.606610774993896 14.4110746383667 L 2.606610774993896 21.71814727783203 C 2.606610774993896 23.16407775878906 3.783077716827393 24.34053802490234 5.22938060760498 24.34053802490234 L 9.114042282104492 24.34053802490234 C 9.507744789123535 24.34053802490234 9.827163696289063 24.02130699157715 9.827163696289063 23.62741851806641 L 9.827163696289063 17.8986759185791 C 9.827163696289063 17.23885345458984 10.36386489868164 16.7021541595459 11.02368927001953 16.7021541595459 L 13.31496715545654 16.7021541595459 C 13.97479248046875 16.7021541595459 14.51149272918701 17.23885345458984 14.51149272918701 17.8986759185791 L 14.51149272918701 23.62741851806641 C 14.51149272918701 24.02130699157715 14.83072662353516 24.34053802490234 15.2246150970459 24.34053802490234 L 19.10927391052246 24.34053802490234 C 20.55557632446289 24.34053802490234 21.73204231262207 23.16407775878906 21.73204231262207 21.71814727783203 L 21.73204231262207 14.4110746383667 L 22.0990047454834 14.4110746383667 C 22.69735908508301 14.4110746383667 23.26005935668945 14.17801094055176 23.68365859985352 13.75459480285645 C 24.55649185180664 12.88120651245117 24.55686378479004 11.46053504943848 23.68477249145508 10.58659076690674 Z M 23.68474578857422 10.58661556243896" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fjoqlw =
    '<svg viewBox="0.0 0.0 16.6 23.1" ><path transform="translate(-91.0, 0.0)" d="M 99.32333374023438 0 C 94.78510284423828 0 91 3.65571117401123 91 8.323337554931641 C 91 10.09908485412598 91.53359985351563 11.68253707885742 92.55767822265625 13.16630935668945 L 98.68637847900391 22.72957420349121 C 98.98369598388672 23.19447135925293 99.66358947753906 23.19356155395508 99.96030426025391 22.72957420349121 L 106.115592956543 13.13377380371094 C 107.1176147460938 11.71724224090576 107.6466751098633 10.05393695831299 107.6466751098633 8.323337554931641 C 107.6466751098633 3.733849287033081 103.9128265380859 0 99.32333374023438 0 Z M 99.32333374023438 12.10667419433594 C 97.2373046875 12.10667419433594 95.54000854492188 10.40936851501465 95.54000854492188 8.323337554931641 C 95.54000854492188 6.237308025360107 97.2373046875 4.540002822875977 99.32333374023438 4.540002822875977 C 101.4093627929688 4.540002822875977 103.1066741943359 6.237308025360107 103.1066741943359 8.323337554931641 C 103.1066741943359 10.40936851501465 101.4093627929688 12.10667419433594 99.32333374023438 12.10667419433594 Z" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_izmb57 =
    '<svg viewBox="0.0 0.0 22.7 8.4" ><path transform="translate(-31.0, -344.7)" d="M 48.26532745361328 344.6950073242188 L 44.45520782470703 350.65185546875 C 43.46896362304688 352.1895141601563 41.22554779052734 352.1844482421875 40.24405288696289 350.6533203125 L 36.42772674560547 344.6965942382813 C 33.06993865966797 345.472900390625 31 346.8950805664063 31 348.5946044921875 C 31 351.543701171875 36.84793090820313 353.1346130371094 42.35000610351563 353.1346130371094 C 47.85208511352539 353.1346130371094 53.70001220703125 351.543701171875 53.70001220703125 348.5946044921875 C 53.70001220703125 346.8938598632813 51.627197265625 345.470947265625 48.26532745361328 344.6950073242188 Z" fill="#7cd955" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gptwl8 =
    '<svg viewBox="0.0 2.4 11.8 11.8" ><path transform="translate(0.0, -80.1)" d="M 8.791516304016113 82.47270202636719 L 0.9582456946372986 90.30651092529297 C 0.9188367128372192 90.34603118896484 0.8903807997703552 90.39594268798828 0.8768304586410522 90.44957733154297 L 0.00858769565820694 93.93450927734375 C -0.01738390699028969 94.03941345214844 0.01344326045364141 94.15097808837891 0.09000308811664581 94.22754669189453 C 0.1479311287403107 94.28546905517578 0.2268621921539307 94.31753540039063 0.3075997233390808 94.31753540039063 C 0.3323291838169098 94.31753540039063 0.357623279094696 94.31449127197266 0.3822397589683533 94.30828094482422 L 3.867184162139893 93.43992614746094 C 3.921498537063599 93.42637634277344 3.970844268798828 93.39803314208984 4.010253429412842 93.35861968994141 L 11.84418869018555 85.52536773681641 L 8.791516304016113 82.47270202636719 Z M 8.791516304016113 82.47270202636719" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_myl6dd =
    '<svg viewBox="9.7 0.0 4.6 4.6" ><path transform="translate(-324.66, -0.25)" d="M 338.4487915039063 1.55533754825592 L 337.5768127441406 0.6833699941635132 C 336.9940185546875 0.1005898788571358 335.9783325195313 0.1011564657092094 335.3962097167969 0.6833699941635132 L 334.328125 1.751477241516113 L 337.3806762695313 4.804047584533691 L 338.4487915039063 3.735939741134644 C 338.7398986816406 3.444945335388184 338.9002380371094 3.057631969451904 338.9002380371094 2.645700693130493 C 338.9002380371094 2.233769416809082 338.7398986816406 1.846455454826355 338.4487915039063 1.555346131324768 Z M 338.4487915039063 1.55533754825592" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w3lsgb =
    '<svg viewBox="30.7 37.7 27.4 1.0" ><path transform="translate(0.0, 1.47)" d="M 30.69856834411621 36.22430801391602 L 58.12195587158203 36.22430801391602" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_gfauhh =
    '<svg viewBox="30.7 46.0 13.7 1.0" ><path transform="translate(0.0, 8.58)" d="M 30.69856834411621 37.39829635620117 L 40.1485595703125 37.39829635620117 L 44.41026306152344 37.39829635620117" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_n1gh0g =
    '<svg viewBox="43.9 29.4 13.7 1.0" ><path transform="translate(13.23, -8.0)" d="M 30.69856834411621 37.39829635620117 L 44.41026306152344 37.39829635620117" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
