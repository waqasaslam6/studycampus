import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/ValidateCVStep2.dart';
import 'models/Item.dart';

class ValidateCVStep1 extends StatefulWidget {
  @override
  _ValidateCVStep1State createState() => _ValidateCVStep1State();
}

class _ValidateCVStep1State extends State<ValidateCVStep1> {

  List<Item> cities = <Item>[
    const Item('LA ROCHELLE'),
    const Item('BORDEAUX'),
    const Item('POITIERS'),
    const Item('TOULOUSE'),
  ];

  Item selectedPlace;
  Item selectedCity;

  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f2a47),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1f2a47),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("DEVELOPPEZ VOTRE PROFIL",
                          style: GoogleFonts.boogaloo(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[300]
                          ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("ET POSTULEZ EN TROIS CLIQUES",
                          style: GoogleFonts.boogaloo(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[300]
                          ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("1/3   PARCOURS & DOMAINE",
                          style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[300]
                          ),),
                      ],
                    ),
                    SizedBox(height: 50,),
                    DropdownButtonFormField<Item>(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset("assets/icons/ville.png",
                          scale: 2,color: Colors.grey,),
                        hintStyle: new TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      isDense: true,
                      isExpanded: true,
                      hint: Text("NIVEAU",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      value: selectedCity,
                      onChanged: (Item Value) {
                        setState(() {
                          selectedCity = Value;
                        });
                      },
                      items: cities.map((Item user) {
                        return DropdownMenuItem<Item>(
                          value: user,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButtonFormField<Item>(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset("assets/icons/ville.png",
                          scale: 2,color: Colors.grey,),
                        hintStyle: new TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      isDense: true,
                      isExpanded: true,
                      hint: Text("DOMAINE PROFESSIONNEL",
                        style: TextStyle(
                            color: Colors.white,
                        ),),
                      value: selectedCity,
                      onChanged: (Item Value) {
                        setState(() {
                          selectedCity = Value;
                        });
                      },
                      items: cities.map((Item user) {
                        return DropdownMenuItem<Item>(
                          value: user,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                user.name,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButtonFormField<Item>(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset("assets/icons/ville.png",
                          scale: 2,color: Colors.grey,),
                        hintStyle: new TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      isDense: true,
                      isExpanded: true,
                      hint: Text("DETAIL",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      value: selectedCity,
                      onChanged: (Item Value) {
                        setState(() {
                          selectedCity = Value;
                        });
                      },
                      items: cities.map((Item user) {
                        return DropdownMenuItem<Item>(
                          value: user,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                user.name,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                 SizedBox(height: 100,),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ValidateCVStep2()
                        ));
                      },
                      color: Theme.of(context).primaryColor,
                      child: Text("VALIDER ETAPE 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),),
                      padding: EdgeInsets.only(top: 15,bottom: 15),
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
    );
  }
}
