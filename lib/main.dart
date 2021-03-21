import 'package:flutter/material.dart';
import 'package:ilyan_medical/theme5/utils/AppConstant.dart';
import 'package:ilyan_medical/theme5/utils/AppStore.dart';
import 'package:ilyan_medical/widgets/my_app.dart';
import 'package:nb_utils/nb_utils.dart';

AppStore appStore = AppStore();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  appStore.setDarkMode(await getBool(isDarkModeOnPref));

  runApp(MyApp());
}
