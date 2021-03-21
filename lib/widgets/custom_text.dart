import 'package:flutter/material.dart';

class CustomizText extends Text {
  CustomizText(String data,
      {color: Colors.white, textAlign: TextAlign.center, factor: 1.0})
      : super(data,
            textAlign: textAlign,
            textScaleFactor: factor,
            style: new TextStyle(color: color));
}
