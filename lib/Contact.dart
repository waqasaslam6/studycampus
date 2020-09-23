import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/Dashboard.dart';
import 'package:studycampus/models/Item.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {


  List<Item> cities = <Item>[
    const Item('LA ROCHELLE'),
    const Item('BORDEAUX'),
    const Item('POITIERS'),
    const Item('TOULOUSE'),
  ];

  Item selectedPlace;
  Item selectedCity;

  bool status = false;

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
    return WillPopScope(
     onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Color(0xff1f2a47),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff1f2a47),
          brightness: Brightness.light,
          title: Text("CONTACT",
            style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white
            ),),
          leading: IconButton(
            onPressed: (){
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
                    (Route<dynamic> route) => false,
              );
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,),
          ),
          centerTitle: true,
          actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.search,color: Colors.white,),
//            onPressed: (){},
//          ),
//          IconButton(
//            icon: Icon(Icons.more_vert,color: Colors.white,),
//            onPressed: (){},
//          ),

          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Image.asset("assets/images/logo.png",
                  width: MediaQuery.of(context).size.width/3,),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline,color:Colors.grey),
                          hintText: "Full Name",
                          hintStyle: new TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Image.asset("assets/icons/mail.png",scale: 9,color: Colors.grey,),
                          hintText: "Email",
                          hintStyle: new TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        minLines: 4,
                        maxLines: 5,
                        decoration: InputDecoration(
                          prefixIcon: Image.asset("assets/icons/padlock.png",scale: 19,color: Colors.grey,),
                          hintText: "Message",
                          hintStyle: new TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: (){},
                        color: Theme.of(context).primaryColor,
                        child: Text("Nous contacter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),),
                        padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
