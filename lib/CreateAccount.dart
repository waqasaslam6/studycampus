import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/Reductions.dart';
import 'models/Item.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  List<Item> cities = <Item>[
    const Item('LA ROCHELLE'),
    const Item('BORDEAUX'),
    const Item('POITIERS'),
    const Item('TOULOUSE'),
  ];

  List<Item> campus = <Item>[
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
                      hint: Text("Ville",
                      style: TextStyle(
                        color: Colors.grey
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
                      hint: Text("Campus",
                        style: TextStyle(
                            color: Colors.grey
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
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline,color:Colors.grey),
                        hintText: "Age",
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
                      style: TextStyle(
                          color: Colors.white
                      ),
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
                      style: TextStyle(
                          color: Colors.white
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Image.asset("assets/icons/padlock.png",scale: 19,color: Colors.grey,),
                        hintText: "Mot de passe",
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
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text("J'accepte les CGU",
                       style: TextStyle(
                         color: Colors.grey,
                       ),),
                       Center(
                         child: Container(
                           child: FlutterSwitch(
                             width: 60.0,
                             height: 33.0,
                             valueFontSize: 12.0,
                             toggleSize: 12.0,
                             value: status,
                             borderRadius: 30.0,
                             padding: 10.0,
                             onToggle: (val) {
                               setState(() {
                                 status = val;
                               });
                             },
                           ),
                         ),
                       ),
                     ],
                   ),
                    SizedBox(height: 30,),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: (){
                        showDialog(context: context,
                        child: new AlertDialog(
                                content: new Text("Merci d’avoir créé votre compte, vous pouvez maintenant avoir accès à toute l’application STUDY CAMPUS et profiter de tous les bonS plans"),
                          actions: [
                          MaterialButton(
                            padding: EdgeInsets.only(left: 20,right: 20),
                            onPressed: ()
                            {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => Reductions()),
                                    (Route<dynamic> route) => false,
                              );
                            },
                             child: Text("c'est parti",
                              style: TextStyle(
                                color: Colors.white,
                              ),),
                            color: Theme.of(context).primaryColor,
                          ),
                        ],)
                        );
                      },
                      color: Theme.of(context).primaryColor,
                      child: Text("Créer un compte",
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
    );
  }
}
