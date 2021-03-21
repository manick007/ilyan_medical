import 'dart:ui';

import 'package:flutter/material.dart';

const t3_colorPrimary = Color(0xFF20609F);
const t3_colorPrimaryDark = Color(0xFF80A33E);
const t3_colorAccent = Color(0XFFf7b733);

const t3_textColorPrimary = Color(0XFF333333);
const t3_textColorSecondary = Color(0XFF9D9D9D);

const t3_app_background = Color(0XFFf8f8f8);
const t3_view_color = Color(0XFFDADADA);
const t3_gray = Color(0XFFF4F4F4);

const t3_red = Color(0XFFF12727);
const t3_green = Color(0XFF8BC34A);
const t3_edit_background = Color(0XFFF5F4F4);
const t3_light_gray = Color(0XFFCECACA);
const t3_tint = Color(0XFFF4704C);
const t3_colorPrimary_light = Color(0XFFF36F4B);
const t3_orange = Color(0XFFF13E0A);

const t3_white = Color(0XFFffffff);
const t3_black = Color(0XFF000000);
const t3_icon_color = Color(0XFF747474);

const t3_shadow = Color(0X70E2E2E5);
var t3White = materialColor(0XFFFFFFFF);
const shadow_color = Color(0X95E9EBF0);
const primaryColor = Color(0XFF8998FF);
const secondaryColor = Color(0XFF75D7D3);
const thirdColor = Color(0XFF607d8b);

const darkColor = Color(0XFF1B1B1D);

const inactiveColor = Color(0xFF757575);

var bgColor = Color(0XFFE5E5E5);
var darkBgColor = Colors.grey[850];
var lightBgColor = Colors.grey[300];
const appWhite = Color(0XFFFFFFFF);
const appCat1 = Color(0XFF8998FE);
const appCat2 = Color(0XFFFF9781);
const appCat3 = Color(0XFF73D7D3);
const appCat4 = Color(0XFFF9A825);
const appCat5 = Color(0XFFFF5722);
const appCat6 = Color(0XFF607D8B);
const appCat7 = Color(0XFF3F51B5);
const appCat8 = Color(0XFF9C27B0);
const appCat9 = Color(0XFF009688);
const shadowColor = Color(0X95E9EBF0);


const textColorPrimary = Color(0xFF464545);
const textColorSecondary = Color(0xFF747474);


Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor materialColor(colorHax) {
  return MaterialColor(colorHax, color);
}

MaterialColor colorCustom = MaterialColor(0XFF5959fc, color);
