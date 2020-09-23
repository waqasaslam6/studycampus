import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/CGU.dart';
import 'package:studycampus/Contact.dart';
import 'package:studycampus/Dashboard.dart';
import 'package:studycampus/InvalidReduction.dart';
import 'package:studycampus/Login.dart';
import 'package:studycampus/VillesExplorer.dart';
import 'package:studycampus/components/PopupButtons.dart';

class Reductions extends StatefulWidget {
  @override
  _ReductionsState createState() => _ReductionsState();
}

class _ReductionsState extends State<Reductions> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  Future<bool> _onBackPressed() async {
    // Your back press code here...

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Color(0xffe0e0e0),
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xff1f2a47),
          brightness: Brightness.light,
          title: Text("REDUCTIONS",
            style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white
            ),),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,),
          ),
          centerTitle: true,
          actions: <Widget>[
            PopupButtons(),

          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Login()
                ));
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Center(
                    child: ClipRect(
                      child: Banner(
                        message: "FAST FOOD",
                        textStyle: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 10
                        ),
                        location: BannerLocation.topStart,
                        color: Theme.of(context).primaryColor,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/burger1.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Image.asset("assets/images/subway.png",
                                width: 80,),
                                SizedBox(width: 22,),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  color: Color(0xff3fab99),
                                  child: Text("SUBWAY",
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.white,
                              child: Text("2 sub 30 = 10€",
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
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {
                showDialog(
                    context: context,
                    builder: (_) => new AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0))),
                      content: Builder(
                        builder: (context) {
                          // Get available height and width of the build area of this widget. Make a choice depending on the size.
                          var height = MediaQuery.of(context).size.height;
                          var width = MediaQuery.of(context).size.width;
                          return Container(
                            height: height - 200,
                            width: width - 100,
                            child: InvalidReduction(),
                          );
                        },
                      ),
                    )
                );
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Center(
                    child: ClipRect(
                      child: Banner(
                        message: "FAST FOOD",
                        location: BannerLocation.topStart,
                        color: Theme.of(context).primaryColor,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/burger2.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  color: Colors.black,
                                  child: Image.asset("assets/images/mcdonalds.png",
                                    width: 50,),
                                ),
                                SizedBox(width: 60,),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  color: Color(0xff3fab99),
                                  child: Text("MC DONALD'S",
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.white,
                              child: Text("""Gamme ''Royal'' = 3€""",
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
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {


                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Login()
                ));
              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/burger3.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          color: Color(0xff3fab99),
                          child: Text("LA TERRASSE",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text("1 verre achete = 2",
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
            SizedBox(height: 10,),
            GestureDetector(
              onTap: ()
              {

                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Login()
                ));

              },
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/burger4.jpg"),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Color(0xff3fab99),
                              child: Text("MC DONALD'S",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.white,
                              child: Text("""Gamme "Royal" = 3€ """,
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
          ],
        ),
      ),
    );
  }
}
