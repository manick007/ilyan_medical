import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




class PatientModel {
  int id;
  String nom;
  String prenom;
  String adresse;
  String telephone;
  String age;
  String fixe;
  String email;
  String description;
  String piecesJoint;
  IconData icone;
  
  PatientModel(){
   
  }

  /*PatientModel(String nom, String identifiant, String email, String description, IconData icone) {
    this.nom = nom;
    this.identifiant=identifiant;
    this.email=email;
    this.description=description;
    this.icone = icone;
  }*/
   setNom (String nom)=> this.nom=nom;
   setId (int id)=> this.id=id;
   setPrenom (String prenom)=> this.prenom=prenom;
   setFixe (String fixe)=> this.fixe=fixe;
   setEmail (String email)=> this.email=email;
   setAdresse (String adresse)=>this.adresse=adresse;
   setTelephone (String telephone)=>this.telephone=telephone;
   setDescription (String desc) => this.description=desc;

  PatientModel.fromJson(Map<String, dynamic> json)
      : nom = json['NOM'],
      id=int.parse(json['IDPATIENT']),
      prenom=json['PRENOM'],
      telephone=json['TELEPHONE'],
      adresse=json['ADRESSE'],
      fixe = json['FIXE'],
      email = json['EMAIL'],
      description = json['description'],
        icone = Icons.account_circle_rounded;

  Map<String, dynamic> toJson() =>
    {
      'nom': nom,
      'fixe':fixe,
      'email': email,
      'description':description,
      'icone':icone
    };
 
}