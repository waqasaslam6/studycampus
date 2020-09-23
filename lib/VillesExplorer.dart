import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/CGU.dart';
import 'package:studycampus/Contact.dart';
import 'package:studycampus/Dashboard.dart';
import 'package:studycampus/Evenements.dart';
import 'package:studycampus/Jobs.dart';
import 'package:studycampus/MyAccount.dart';
import 'package:studycampus/PhotosVideos.dart';
import 'package:studycampus/Reductions.dart';
import 'package:studycampus/Shop.dart';
import 'package:studycampus/models/CustomPopupMenu.dart';
import 'package:studycampus/models/ville_exp.dart';

class VillesExplorer extends StatefulWidget {
  final String villeName;
  final String villeImage;
  VillesExplorer(this.villeName,this.villeImage);
  @override
  _VillesExplorerState createState() => _VillesExplorerState();
}

class _VillesExplorerState extends State<VillesExplorer> {

  List<VilleExpModel> villeExpo = [
    VilleExpModel(
      name: "RÉDUCTIONS",
      icon: "assets/icons/Réduction.png",
      top: "LES"
    ),
    VilleExpModel(
        name: "JOBS",
        icon: "assets/icons/Job.png",
        top: "LES"
    ),
    VilleExpModel(
       name: "ÉVÉNEMENTS",
      icon: "assets/icons/événements.png",
        top: "LES"
    ),
    VilleExpModel(
        name: "PHOTOS & VIDÉOS",
      icon: "assets/icons/camera.png",
        top: "LES"
    ),
    VilleExpModel(
        name: "BOUTIQUE",
      icon: "assets/icons/Boutique.png",
        top: "LA"
    ),
    VilleExpModel(
        name: "COMPTE",
      icon: "assets/icons/Compte.png",
        top: "MON"
    ),
  ];

  Future<bool> _onBackPressed() async {
    // Your back press code here...

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final orientation = MediaQuery.of(context).orientation;

    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            _header(context,widget.villeName,widget.villeImage,theme),
            Flexible(
              child: Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                color: Color(0xffe5e7e9),
                child: GridView.builder(
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
                  itemCount: villeExpo.length,
                  padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context,int index)
                  {
                    return GestureDetector(
                      onTap: ()
                      {
                        switch(index)
                        {
                          case 0:
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Reductions()
                            ));
                            break;
                          case 1:
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Jobs()
                            ));
                            break;
                          case 2:
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Evenements()
                            ));
                            break;
                          case 3:
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => PhotosVideos()
                            ));
                            break;
                          case 4:
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Shop()
                            ));
                            break;
                          case 5:
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => MyAccount()
                            ));
                            break;

                        }
                      },
                      child: GridTile(
                        child: Card(
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      shape: BoxShape.circle
                                  ),
                                  child: Center(
                                    child: Image.asset(villeExpo[index].icon,
                                    width: 30,
                                    color: Colors.white,),
                                  ),
                                ),
                                Text(villeExpo[index].top,
                                style: GoogleFonts.lato(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blueGrey,
                                ),),
                                Text(villeExpo[index].name,
                                style: GoogleFonts.boogaloo(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14,
                                ),),
                                Icon(Icons.keyboard_arrow_down,
                                color: Theme.of(context).primaryColor,),
                              ],
                            ),
                          ),
                        ),

                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _header(context,villeName,villeImage,theme)
{
  return SafeArea(
    child: Container(
      height: MediaQuery.of(context).size.height*0.25,
      // width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(villeImage),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.25,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.25,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                        (Route<dynamic> route) => false,
                  );
                },
                icon: Icon(Icons.arrow_back,color: Colors.white,),
              ),
              IconButton(
                icon: Icon(Icons.more_vert,
                  color: Colors.white,),
                onPressed: () async {
                  showDialog(
                    context: context,
                    child: AlertDialog(
                      content: Container(
                        constraints: BoxConstraints(
                          maxHeight: 200
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              onPressed: (){
                              showDialog(context: context,
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      Text("""
1- GENERAL

L’Application « Study Campus » est mise à disposition par STUDY CAMPUS, immatriculé au répertoire SIRENE sous le numéro SIREN 84307749600019, demeurant 10 rue Hélène Nebout 17000 LA ROCHELLE (ci-après désigné « l’Entreprise »).

Les présentes conditions générales d’utilisation (ci-après « CGU ») ont pour objet de régir l’accès, le téléchargement et l’utilisation de l’application « Study Campus », téléchargeable sur les plateformes de téléchargement d'applications pour téléphones mobiles iPhone (App Store) et Android (Google Play) (ci-après l’« Application ») développée par l’Entreprise.

En installant l’Application, l’Utilisateur accepte de se soumettre sans réserve aux présentes CGU.

2- DÉFINITIONS

Les termes qui seront définis ci-dessous auront la signification suivante :

« Utilisateur » désigne toute personne utilisant l’Application.
« Compte Utilisateur » désigne le compte créé par l'utilisateur à la première ouverture de l'Application, et nécessaire pour pouvoir activer le service.
« Contenu » désigne les données mises à disposition par l’Application.


3- OBJECTIFS ET DESTINATAIRES DE L’APPLICATION

L'Application répertorie des réductions et des localisations dans la Rochelle, Bordeaux, Nantes et Poitiers pouvant intéresser un public étudiant. Elle a pour objet de fournir des réductions chez les partenaires de l’Entreprise ainsi que de présenter des événements passés et à venir dans chacune de ces villes pouvant intéresser un public étudiant. Les Utilisateurs recevront des notifications push en fonction des informations ajoutées à leur Compte Utilisateur. Le nombre de notifications push dépendra de l'activité de l'Utilisateur sur l'Application et du nombre d'événements ajoutés au Compte Utilisateur correspondant.

4- CONFIGURATION REQUISE

Afin d’utiliser l’Application via un téléphone mobile, une tablette ou tout autre terminal mobile, l’Utilisateur doit disposer d’un accès à Internet haut débit approprié, d’un abonnement téléphonique permettant un accès à Internet, d’un téléphone mobile et/ou un terminal mobile compatible avec l’Application tels que : Smartphone (Iphone, Androids) et tablettes, une connexion wap, wifi et/ou 3G/4G sur son téléphone ou son terminal mobile.

5- COMPTE UTILISATEUR

5.1.
L’utilisation de l’Application nécessite la création d’un Compte Utilisateur, en remplissant les données suivantes : nom, prénom, adresse mail, numéro de téléphone, date de naissance. 

Tout Utilisateur n’est autorisé à être titulaire que d’un seul Compte Utilisateur et une seule Application peut être installée sur son terminal mobile.


5.2.
L’Utilisateur garantit que les données qu’il communique aux fins de la création de son Compte Utilisateur sont conformes à la réalité et exactes.

5.3.
L’Utilisateur accepte et reconnaît qu’il est responsable du respect du caractère confidentiel et personnel des identifiants et mots de passe associés à son Compte Utilisateur. En conséquence, l’Utilisateur accepte d’être le seul et unique responsable à l’égard de l’Entreprise de tous actes effectués à partir de son Compte Utilisateur et de la protection de son mot de passe. Si l’Utilisateur a connaissance d’une utilisation non autorisée de son mot de passe et/ou de son Compte Utilisateur, il s’engage à en informer l’Entreprise sans délai à l’adresse figurant en tête des présentes ou par courriel à l’adresse suivante : [10 rue Hélène Nebout 17000 LA ROCHELLE.

6- CONDITIONS D’UTILISATION

6.1.
L’Utilisateur reconnait que les conditions du contrat avec son opérateur de téléphonie mobile continueront de s’appliquer lors de l’utilisation de l’Application. L’Utilisateur assumera seul tous les frais pouvant être réclamés par l’opérateur mobile liés à l’accès aux services de connexion Internet, Wifi, wap et/ou 3G nécessaires à l’Utilisation de l’Application.

6.2.
L’Utilisateur doit autoriser la géolocalisation. S’il a bloqué le service de localisation dans « Réglages / Service de localisation », le pop-up d’alerte suivant s’affichera « Activez Service de localisation » pour permettre aux services de géolocalisation de localiser l’Utilisateur. Si le service de localisation est activé, le pop-up d’alerte suivant s’affichera « Autorisez-vous COMM’ON à utiliser vos données de géolocalisation ? ». Ce message ne s’affichera qu’une seule fois. Si l’Utilisateur souhaite modifier les paramètres de géolocalisation, il devra se rendre dans la rubrique « Réglages / Service de localisation » de son système d’exploitation.

7- GRATUITE DU SERVICE

L’application est fournie gratuitement aux Utilisateurs.

Cependant, l’Entreprise ne prend aucun engagement quant à la pérennité de la gratuité de son service et se réserve le droit de modifier ultérieurement son principe de tarification. Dans cette éventualité, cette modification tarifaire serait communiquée aux Utilisateurs et chaque Utilisateur aurait alors la liberté de continuer ou non à utiliser le service suivant les nouvelles conditions.

8- DISPONIBILITE

L’Entreprise s’efforce d’assurer la disponibilité de l’Application 24h/24h et 7j/7j. Cependant, il peut arriver que l’accès à l’Application soit interrompu notamment dans le cadre d’opérations de maintenance, de mises à niveau ou de mises à jour, de réparations d’urgence, ou par suite de circonstances indépendantes de la volonté de l’Entreprise. L’Entreprise s’engage à prendre toutes les mesures raisonnables pour limiter ces perturbations, pour autant qu’elles lui soient imputables.

9- DONNEES PERSONNELLES

9.1.
Les données collectées et ultérieurement traitées par l’Entreprise sont celles que l’Utilisateur transmet volontairement lors de la création de son Compte Utilisateur.

Le traitement des données personnelles a fait l’objet d’une déclaration normale auprès de la CNIL.

Conformément à la loi informatique et libertés du 6 janvier 1978, l’Utilisateur dispose d’un droit d’accès, de rectification et d’opposition aux données personnelles le concernant. Il lui suffit d’écrire en ligne à l’adresse e-mail suivante : contact@study-campus.fr ou d’envoyer un courrier à l’adresse figurant en tête des présentes, en joignant un justificatif d’identité.

Les informations recueillies auprès des Utilisateurs sont stockées de manière sécurisée. Le responsable de la collecte et du traitement de ces données est l’Entreprise, dont les coordonnées figurent ci-dessus. Ces données seront utilisées par l’Entreprise pour les besoins de l’utilisation de l’Application et ne seront pas communiquées à des tiers sans autorisation préalable de l’Utilisateur.

9.2.
Les données à caractère personnel relatives à l’Utilisateur seront détruites à l’expiration des délais légaux ou lorsqu’elles ne deviennent plus pertinentes (données de géolocalisation notamment) ou à la demande expresse de l’Utilisateur.

10- PROPRIETE INTELLECTUELLE

L’Application et le contenu de l’Application sont protégés par le Code de la propriété intellectuelle ainsi que par toutes normes internationales applicables, et sont, sauf indications contraires, la propriété exclusive de l’Entreprise ou de ses partenaires.

Toute reproduction, représentation, publication, transmission, utilisation ou modification, intégrale ou partielle de l’Application et/ou d’un de ses éléments, faite sans l’autorisation écrite et préalable de l’Entreprise constituerait une contrefaçon susceptible d’entraîner des poursuites civiles et/ou pénales.

11- LIMITATION DE RESPONSABILITE

L’Utilisateur reconnaît et accepte que l’Application est fournie au moyen d’Internet, de réseaux mobiles et par conséquent, que des facteurs hors du contrôle raisonnable de l’Entreprise peuvent avoir une incidence sur la qualité et la disponibilité de l’Application.

En utilisant l’Application, l’Utilisateur accepte tous les risques et caractéristiques inhérents à l’utilisation des terminaux mobiles et Internet, en particulier les possibles dysfonctionnements techniques des réseaux Internet et de téléphonie mobile empêchant le bon déroulement et/ou fonctionnement de l’Application, les bugs informatiques, les anomalies et/ou défaillances techniques, les délais de transmission, les pertes de donnée et les risques de piratage.

Par conséquent, l’Entreprise ne pourra en aucun cas être tenue pour responsable en ce qui concerne notamment : la disponibilité, l’actualité, la sécurité, et la qualité de tout ou partie de l’Application, de tout logiciel ou application associé ou de tout autre produit, service ou information obtenu via l’Application.

Dans aucun cas l’Entreprise ne sera tenue responsable de pertes ou dommages directs ou indirects, de quelque nature que ce soit, résultant de l’utilisation et/ou du téléchargement de l’Application, ou de l’un quelconque de ses éléments, par l’Utilisateur.

12- MODIFICATIONS

L’Entreprise se réserve le droit d’apporter à tout moment des modifications qu’elle jugera nécessaires et utiles aux présentes CGU. Les fonctionnalités et/ou caractéristiques de l’Application et les services y afférents sont évolutifs.

L’Entreprise se réserve le droit, à tout moment, de lancer de nouveaux services mais aussi, sans préavis et à son entière discrétion, de supprimer ou modifier tout ou partie des fonctionnalités, caractéristiques, rubriques et/ou services de l’Application.


13- RESILIATION

13.1
L’Utilisateur peut demander la résiliation des CGU et la suppression de son Compte Utilisateur à tout moment, sans avoir à justifier d’un quelconque motif, par simple courriel envoyé à l’adresse suivante : 10 rue Hélène Nebout 17000 LA ROCHELLE ou par courriel à l’adresse suivante : contact@study-campus.fr.

13.2.
L’Entreprise peut mettre fin à l’utilisation de l’Application par un Utilisateur sous réserve de respecter un préavis d’un mois.

L’Entreprise se réserve le droit de prendre toutes les mesures nécessaires, y compris la résiliation d’un Compte Utilisateur, sans devoir donner de motifs, ni préavis, ni formalités, ni indemnités au profit de l’Utilisateur, dans le cas d’une décision judiciaire l’y contraignant, d’événements de force majeure, de manquement aux présentes CGU ou encore en cas de suspicion de fraude. Une telle résiliation interviendra sans préjudice de tous les dommages et intérêts qui pourraient être réclamés en réparation des préjudices subis du fait de tels manquements.

13.3.

Au moment de toute résiliation, les droits et les licences accordés à l’Utilisateur seront résiliés et l’Utilisateur devra cesser toute utilisation de l’Application. L’Utilisateur n’aura droit à aucune indemnité.

14- LOI APPLICABLE ET DIFFÉRENT

14.1.
Les présentes CGU sont soumises au droit français. Tout litige en lien avec les présentes CGU est du ressort des juridictions du ressort de la Cour d’appel de Poitiers.

14.2.
En cas de traduction des CGU, seule la version française est valable et applicable.
              
              
              """,
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),),
                                    ],
                                  ),
                                ),
                              ));
                              },
                              child: Text("CGU",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                            Divider(color: Colors.black,thickness: 1,),
                            FlatButton(
                              onPressed: (){},
                              child: Text("Mention",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Divider(color: Colors.black,thickness: 1,),
                            FlatButton(
                              onPressed: (){
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(builder: (context) => Contact()),
                                      (Route<dynamic> route) => false,
                                );

                              },
                              child: Text("Contact",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ],
                        ),
                      ),

                    )
                  );
                },
              ),

            ],
          ),
          Center(
            child: Text(villeName.toString(),
              style: GoogleFonts.boogaloo(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),),
          ),
        ],
      ),
    ),
  );
}
