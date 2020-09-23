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
import 'package:studycampus/components/PopupButtons.dart';
import 'package:studycampus/models/CustomPopupMenu.dart';
import 'package:studycampus/models/ville_exp.dart';

class POITIERS extends StatefulWidget {
  @override
  _POITIERSState createState() => _POITIERSState();
}

class _POITIERSState extends State<POITIERS> {

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
            _header(context,"POITIERS","assets/images/poitiers.jpg",theme),
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
              PopupButtons(),

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
