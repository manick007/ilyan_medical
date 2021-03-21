class User{
  int id;
  String prenom;
  String nom;
  String adresse;
  String role;
  String telephone;
  String email;
  String matricule;
  int idSecteur;
  String grade;
  String fonction;

  setNom (String nom)=> this.nom=nom;
  setId (int id)=> this.id=id;
  setPrenom (String prenom)=> this.prenom=prenom;
  setEmail (String email)=> this.email=email;
  setAdresse (String adresse)=>this.adresse=adresse;
  setTelephone (String telephone)=>this.telephone=telephone;
  setRole (String role)=>this.telephone=telephone;

  User.fromJsonAdmin(Map<String, dynamic> json)
      :nom = json['NOM'],
      id=int.parse(json['IDADMIN']),
      prenom=json['PRENOM'],
      telephone=json['TELEPHONE'],
      adresse=json['ADRESSE'],
      email = json['EMAIL'];

  setMatricule (String role)=>this.matricule=matricule;

  User.fromJsonMedecin(Map<String, dynamic> json)
      : nom = json['nom'],
      id=int.parse(json['id']),
      prenom=json['prenoms'],
      telephone=json['telephone'],
      adresse=json['adresse'],
      email = json['email'],
      matricule = json['numéro_rtps'];

  //Infirmier
  

  setIdSecteur (int idSecteur)=>this.idSecteur=idSecteur;
  setGrade (String grade)=>this.grade=grade;
  setFonction (String fonction)=>this.fonction=fonction;
   User.fromJsonInfirmier(Map<String, dynamic> json)
      : nom = json['NOM'],
      id=int.parse(json['IDINFIRMIER']),
      prenom=json['PRENOM'],
      telephone=json['TELEPHONE'],
      adresse=json['ADRESSE'],
      email = json['EMAIL'],
      grade = json['GRADE'],
      idSecteur=int.parse(json['IDSECTEUR']);

      User(){

      }
}

class SoumissionModel{
  int id;
  int idPatient;
  String idInfirmier;
  String description;
  String status;
  int idCategorie;
  String dateSoumission;
  String dateDebut;
  String dateFin;

   setId (int id)=>this.id=id;
   setIdPatient (int idPatient)=>this.idPatient=idPatient;
   setIdInfirmier (String idInfirmier)=>this.idInfirmier=idInfirmier;
   setDescription (String description)=>this.description=description;
   setStatus (String status)=>this.status=status;
   setIdCategorie (int idCategorie)=>this.idCategorie=idCategorie;
   setDateSoumission (String dateSoumission)=>this.dateSoumission=dateSoumission;
   setDateDebut (String dateDebut)=>this.dateDebut=dateDebut;
   setDateFin (String dateFin)=>this.dateFin=dateFin;

  SoumissionModel.fromJson(Map<String, dynamic> json):
    id=int.parse(json['IDSOUMISSION']),
    idPatient=int.parse(json['IDPATIENT']),
    idInfirmier=json['IDINFIRMIER'],
    status=json['STATUS'],
    description=json['DESCRIPTION'],
    dateSoumission=json['DATE_SOUMISSION'],
    dateDebut=json['DATE_DEBUT'],
    dateFin=json['DATE_FIN'],
    idCategorie=int.parse(json['ID_CATEGORIES']);

  
}
