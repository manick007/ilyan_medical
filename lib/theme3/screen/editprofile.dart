import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ilyan_medical/network_utils/api.dart';
import 'package:ilyan_medical/theme3/utils/T3Constant.dart';
import 'package:ilyan_medical/theme3/utils/colors.dart';
import 'package:ilyan_medical/theme3/utils/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Editprofile extends StatefulWidget {
  EditprofileWidget createState() => EditprofileWidget();
}

class EditprofileWidget extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('JSON ListView in Flutter')),
        body: FutureBuilder<List<Patients>>(
          future: _fetchPatients(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());

            return ListView(
              children: snapshot.data
                  .map((data) => ListTile(
                        title: Text(data.nom),
                        onTap: () {
                          print(data.nom);
                        },
                      ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }

  //final String uri = 'http://ilyan.mrmarketafrica.org/api/liste_patients.php';
  Future<List<Patients>> _fetchPatients() async {
    //final jobsListAPIUrl = 'https://mock-json-service.glitch.me/';
    //final response = await http.get(jobsListAPIUrl);
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var id = localStorage.getString('id');
    var data = {'id': id};
    final res = await Network().authData(data, '/liste_patients.php');
    //final body = json.decode(res.body);
    //var res = await http.get(uri);
    if (res.statusCode == 200) {
      final items = json.decode(res.body).cast<Map<String, dynamic>>();
      print(items);
      List<Patients> listpatients = items.map<Patients>((json) {
        return Patients.fromJson(json);
      }).toList();

      return listpatients;
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }
}

class Patients {
  final int id;
  final String nom;
  final String age;
  final String prenom;
  final String email;
  final String adresse;
  final String telephone;
  final String description;

  Patients(
      {this.id,
      this.nom,
      this.age,
      this.prenom,
      this.email,
      this.adresse,
      this.telephone,
      this.description});

  factory Patients.fromJson(Map<String, dynamic> json) {
    return Patients(
      id: json['id'],
      nom: 'nom', //json['nom'],
      age: json['age'],
      prenom: json['prenoms'],
      email: json['email'],
      adresse: json['adresse'],
      telephone: json['telephone'],
      description: json['description'],
    );
  }
}
