import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/CGU.dart';
import 'package:studycampus/Contact.dart';
import 'package:studycampus/Dashboard.dart';
import 'package:studycampus/EventDetails.dart';
import 'package:studycampus/components/PopupButtons.dart';

class Evenements extends StatefulWidget {
  @override
  _EvenementsState createState() => _EvenementsState();
}

class _EvenementsState extends State<Evenements> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLiked = false;

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
          title: Text("EVENEMENTS",
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
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>EventDetails()
                  ));
                },
                leading: Image.asset("assets/images/even1.jpg"),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("JEUDI 6 AOUT 2020",
                    style: GoogleFonts.lato(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                    ),),
                    Text("Tournoi de Foot loisir",
                      style: GoogleFonts.boogaloo(
                        color: Colors.black,
                        fontSize: 22,
                      ),),
                    Text("Le Five La Rochelle",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg"),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("JEUDI 6 AOUT 2020",
                      style: GoogleFonts.lato(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),),
                    Text("Tournoi de Foot loisir",
                      style: GoogleFonts.boogaloo(
                        color: Colors.black,
                        fontSize: 22,
                      ),),
                    Text("Le Five La Rochelle",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg"),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("JEUDI 6 AOUT 2020",
                      style: GoogleFonts.lato(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),),
                    Text("Tournoi de Foot loisir",
                      style: GoogleFonts.boogaloo(
                        color: Colors.black,
                        fontSize: 22,
                      ),),
                    Text("Le Five La Rochelle",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg"),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("JEUDI 6 AOUT 2020",
                      style: GoogleFonts.lato(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),),
                    Text("Tournoi de Foot loisir",
                      style: GoogleFonts.boogaloo(
                        color: Colors.black,
                        fontSize: 22,
                      ),),
                    Text("Le Five La Rochelle",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg"),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("JEUDI 6 AOUT 2020",
                      style: GoogleFonts.lato(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),),
                    Text("Tournoi de Foot loisir",
                      style: GoogleFonts.boogaloo(
                        color: Colors.black,
                        fontSize: 22,
                      ),),
                    Text("Le Five La Rochelle",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15,bottom: 15,right: 5),
              child: ListTile(
                leading: Image.asset("assets/images/even1.jpg"),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("JEUDI 6 AOUT 2020",
                      style: GoogleFonts.lato(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                      ),),
                    Text("Tournoi de Foot loisir",
                      style: GoogleFonts.boogaloo(
                        color: Colors.black,
                        fontSize: 22,
                      ),),
                    Text("Le Five La Rochelle",
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 16,
                      ),),
                  ],
                ),
                trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      isLiked = true;
                    });
                  },
                  icon: isLiked ? Icon(Icons.favorite,size: 40,color: Colors.red,):
                  Icon(Icons.favorite_border,size: 40,color: Colors.black,),
                ),
              ),
            ),


        ]
        ),
      ),
    );
  }
}
