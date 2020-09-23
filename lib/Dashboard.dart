import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/VillesExplorer.dart';
import 'package:studycampus/cities/BORDEAUX.dart';
import 'package:studycampus/cities/LAROCHELLE.dart';
import 'package:studycampus/cities/POITIERS.dart';
import 'package:studycampus/cities/TOULOUSE.dart';
import 'package:studycampus/models/les_villes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  List<LesVilles> Villes = [
    LesVilles(
      name: "LA ROCHELLE",
      bannerText: "12 réductions",
      backgroundImage: "assets/images/la-rochelle.jpg"
    ),
    LesVilles(
        name: "BORDEAUX",
        bannerText: "2 réductions",
        backgroundImage: "assets/images/bordeaux.jpeg"
    ),
    LesVilles(
        name: "POITIERS",
        bannerText: "4 réductions",
        backgroundImage: "assets/images/poitiers.jpg"
    ),
    LesVilles(
        name: "TOULOUSE",
        bannerText: "0 réductions",
        backgroundImage: "assets/images/toulouse.jpg"
    ),


  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xffe0e0e0),
      appBar: AppBar(
        backgroundColor: Color(0xff1f2a47),
        title: Text("LES VILLES",
        style: GoogleFonts.lato(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),),
//        leading: IconButton(
//          onPressed: ()=>Navigator.pop(context),
//          icon: Icon(Icons.arrow_back,color: Colors.white,),
//        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => LAROCHELLE()
                ));
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/la-rochelle.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          color: Color(0xff3fab99),
                          child: Text("12 réductions",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text("LA ROCHELLE",
                            style: GoogleFonts.boogaloo(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Color(0xff3fab99),
                            ),),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => BORDEAUX()
                ));
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/bordeaux.jpeg"),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Color(0xff3fab99),
                              child: Text("2 réductions",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.white,
                              child: Text("BORDEAUX",
                                style: GoogleFonts.boogaloo(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Color(0xff3fab99),
                                ),),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => POITIERS()
                ));
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/poitiers.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          color: Color(0xff3fab99),
                          child: Text("4 réductions",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text("POITIERS",
                            style: GoogleFonts.boogaloo(
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              color: Color(0xff3fab99),
                            ),),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => TOULOUSE()
                ));
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/toulouse.jpg"),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Color(0xff3fab99),
                              child: Text("0 réductions",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.white,
                              child: Text("TOULOUSE",
                                style: GoogleFonts.boogaloo(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Color(0xff3fab99),
                                ),),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
