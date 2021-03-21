import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ilyan_medical/theme3/utils/Extension.dart';
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
import 'package:ilyan_medical/theme3/model/User.dart';
import 'package:ilyan_medical/theme5/utils/T5Colors.dart';
import 'package:ilyan_medical/theme5/utils/T5Images.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:io';

class PreviewPatient extends StatefulWidget {
  //static var tag = "/T3BottomNavigation";
  PreviewPatient({Key key, this.patient}) : super(key: key);
  final PatientModel patient;

  @override
  PreviewPatientSate createState() => PreviewPatientSate(this.patient);
}

class PreviewPatientSate extends State<PreviewPatient> {
  PreviewPatientSate(this.patient);
  @override
  void initState() {
    _getListe();
    super.initState();
  }

  var _isLoading = false;
  var _isUpdating = false;
  var lastNameController = TextEditingController();
  var firtNameController = TextEditingController();
  var adresseController = TextEditingController();
  var telephoneController = TextEditingController();
  var emailController = TextEditingController();

  var patient = new PatientModel();
  List<SoumissionModel> mesPriseEnCharge = [];

/*
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    changeStatusColor(t3_app_background);
    return Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: new Text("Detail de "+patient.prenom+ " "+patient.nom),
        backgroundColor:Color(0xFF7CD956),
        automaticallyImplyLeading: false,
      ),
      body:  new SingleChildScrollView(
        child:Container(
          //padding: const EdgeInsets.all(30.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
               Container(
                alignment: Alignment.center,
                width: 100,
                height: 150,
                 child:CircleAvatar(
                    child:Padding(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(t3_ic_profile1)
                      ) ,
                    backgroundColor: transparent_colort,
                    radius: 40,
                ),
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: new Border.all(
                    color: Color(0xFF7CD956),
                    //width: 4.0,
                  ),
                ),
              ),
             
                 Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    text("Prenom:",
                        fontSize: textSizeMedium,
                        fontFamily: fontSemibold),
                    text(patient.prenom,
                        textColor: t5SkyBlue,
                        fontFamily: fontBold,
                        fontSize: textSizeNormal)
                  ],
                ),
               SizedBox(height: 4),
               Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    text("Nom:",
                        fontSize: textSizeMedium,
                        fontFamily: fontSemibold),
                    text(patient.nom,
                        textColor: t5SkyBlue,
                        fontFamily: fontBold,
                        fontSize: textSizeNormal)
                  ],
                ),
               SizedBox(height: 4),
               Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    text("Adresse:",
                        fontSize: textSizeMedium,
                        fontFamily: fontSemibold),
                    text(patient.adresse,
                        textColor: t5SkyBlue,
                        fontFamily: fontBold,
                        fontSize: textSizeNormal)
                  ],
                ),
                SizedBox(height: 4),
               Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    text("Email:",
                        fontSize: textSizeMedium,
                        fontFamily: fontSemibold),
                    text(patient.email,
                        textColor: t5SkyBlue,
                        fontFamily: fontBold,
                        fontSize: textSizeNormal)
                  ],
                ),
               SizedBox(height: 4),
               Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    text("Description:",
                        fontSize: textSizeMedium,
                        fontFamily: fontSemibold),
                    text(patient.description,
                        textColor: t5SkyBlue,
                        fontFamily: fontBold,
                        fontSize: textSizeNormal)
                  ],
                ),
          ],
          ),
          
        ),
      ),
    floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xFF2166AA),
          label: Text('Modifier'),
          icon: Icon(Icons.edit),
          onPressed: () {
            setState(() {
              lastNameController.text = patient.nom;
              firtNameController.text = patient.prenom;
              adresseController.text = patient.adresse;
              telephoneController.text = patient.telephone;
              emailController.text = patient.email;
            });
            showDialog(
                context: context,
                builder: (context)=>editModal(),
                //child:  Text("Open Popup"),
            );
            //editModal();
          },
      ),
    );
  }

  */
  @override
  Widget build(BuildContext context) {
    //changeStatusColor(t3_app_background);
    changeStatusColor(Colors.transparent);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
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
              height: h * 0.3,
              child: Center(
                  child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      text("Prenom:",
                          fontSize: textSizeMedium, fontFamily: fontSemibold),
                      text(patient.prenom,
                          textColor: t5SkyBlue,
                          fontFamily: fontBold,
                          fontSize: textSizeNormal)
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      text("Nom:",
                          fontSize: textSizeMedium, fontFamily: fontSemibold),
                      text(patient.nom,
                          textColor: const Color(0xffffffff),
                          fontFamily: fontBold,
                          fontSize: textSizeNormal)
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      text("Adresse:",
                          fontSize: textSizeMedium, fontFamily: fontSemibold),
                      text(patient.adresse,
                          textColor: const Color(0xffffffff),
                          fontFamily: fontBold,
                          fontSize: textSizeNormal)
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      text("Email:",
                          fontSize: textSizeMedium, fontFamily: fontSemibold),
                      text(patient.email,
                          textColor: const Color(0xffffffff),
                          fontFamily: fontBold,
                          fontSize: textSizeNormal)
                    ],
                  ),
                  SizedBox(height: 4),
                  SizedBox(height: 4),
                ],
              )),
            ),
            Container(
                constraints: BoxConstraints(
                  maxHeight: h * 0.7,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(30.0),
                child: liste()),
          ],
        ),
      ),
    );
  }

  void _getListe() async {
    var idToken = this.patient.id;
    print(idToken);
    setState(() {
      _isLoading = true;
    });
    print(idToken);
    var data = {
      'id': idToken //id medecin
    };
    List<SoumissionModel> pcs = [];
    var res = await Network().authData(data, '/liste_soumissions.php');
    var body = json.decode(res.body);
    var pc;
    print("data");
    print(body);
    body.forEach((element) =>
        {print(element), pc = SoumissionModel.fromJson(element), pcs.add(pc)});
    setState(() {
      mesPriseEnCharge = pcs;
    });
    //_initControllerListe(pcs.length);
  }

  Widget liste() {
    var h = MediaQuery.of(context).size.height;
    return new ListView.builder(
        itemCount: mesPriseEnCharge.length,
        itemBuilder: (context, k) {
          SoumissionModel prise_en_charge = mesPriseEnCharge[k];
          String key = prise_en_charge.id.toString();
          String categorie;
          if (prise_en_charge.idCategorie==3){
            categorie="CNO";
          }
          return new Dismissible(
            key: new Key(key),
            child: new Container(
              padding: EdgeInsets.all(5.0),
              height: 100.0,
              child: new Card(
                elevation: 3,
                child: new InkWell(
                  onTap: (() => print("Tapped")),
                  onLongPress: (() => {}),
                  child: new Container(
                    child: new Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: <Widget>[
                            Text(
                              'Soumission N°: ${prise_en_charge.id}',
                              style: new TextStyle(
                                  color: Colors.teal, fontSize: 12.0),
                            ),
                            Text(
                              'Date Soumission N°: ${prise_en_charge.dateSoumission}',
                              style: new TextStyle(
                                  color: Colors.teal, fontSize: 12.0),
                            ),
                            Text(
                              'Description: ${prise_en_charge.description}',
                              style: new TextStyle(
                                  color: Colors.teal, fontSize: 12.0),
                            ),
                            Text(
                              
                              'Categorie: ${categorie}',
                              style: new TextStyle(
                                  color: Colors.teal, fontSize: 12.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
