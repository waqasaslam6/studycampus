import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/CVMode.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1f2a47),
        brightness: Brightness.light,
        title: Text("Mon compte",
          style: GoogleFonts.lato(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white
          ),),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff1f2a47),
              ),
              CircularProfileAvatar(
                '',
                child: Image.asset("assets/images/profile.jpeg",
                  fit: BoxFit.fitWidth,),
                elevation: 2,
                radius: 40,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
               Container(
                 padding: EdgeInsets.all(10),
                 child: Text("LES INFORMATIONS DE MON COMPTE",
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                 ),),
               ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Prénom",
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Age",
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Campus / ville",
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Année"
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Mail",
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Tél"
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Autre",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.only(top: 15,bottom: 15,),
                        color: Theme.of(context).primaryColor,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => CVMode()
                          ));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Text("MODIFIER MES INFOS",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 15,),
                    Text("5 nouvelles reductions sont disponible",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width*0.7,
                      ),
                      child: Text("Ton CV a ete selectionne par McDonald's tu vas bientot recevoir un appel ou un mail",
                        style: TextStyle(
                          fontSize: 16,
                        ),),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.only(top: 15,bottom: 15,),
                        color: Theme.of(context).primaryColor,
                        onPressed: (){
                          // Navigator.push(context, MaterialPageRoute(
                          //     builder: (context) => CVMode()
                          // ));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: Text("SUPPRIMER MON COMPTE",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
