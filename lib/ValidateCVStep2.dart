import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/MyAccount.dart';
import 'package:studycampus/ValidateCVStep3.dart';
import 'package:studycampus/models/Item.dart';


class ValidateCVStep2 extends StatefulWidget {
  @override
  _ValidateCVStep2State createState() => _ValidateCVStep2State();
}

class _ValidateCVStep2State extends State<ValidateCVStep2> {

  List<Item> cities = <Item>[
    const Item('LA ROCHELLE'),
    const Item('BORDEAUX'),
    const Item('POITIERS'),
    const Item('TOULOUSE'),
  ];

  Item selectedPlace;
  Item selectedCity;

  bool status = false;

  bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;

    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });


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
                        Text("2/3   INFOS  ESSENTIELLES",
                          style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[300]
                          ),),
                      ],
                    ),
                    SizedBox(height: 50,),
                     Row(
                       children: <Widget>[
                         Theme(
                           child: Checkbox(
                               value: rememberMe,
                               onChanged: _onRememberMeChanged
                           ),
                           data: ThemeData(
                             primarySwatch: Colors.blue,
                             unselectedWidgetColor: Colors.white, // Your color
                           ),
                         ),
                         Text("Permis",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 18
                         ),),

                       ],
                     ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Theme(
                          child: Checkbox(
                              value: rememberMe,
                              onChanged: _onRememberMeChanged
                          ),
                          data: ThemeData(
                            primarySwatch: Colors.blue,
                            unselectedWidgetColor: Colors.white, // Your color
                          ),
                        ),
                        Text("Voiture",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),

                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Theme(
                          child: Checkbox(
                              value: rememberMe,
                              onChanged: _onRememberMeChanged
                          ),
                          data: ThemeData(
                            primarySwatch: Colors.blue,
                            unselectedWidgetColor: Colors.white, // Your color
                          ),
                        ),
                        Text("Etude a SUP DE CO ou modifier",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),

                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Theme(
                          child: Checkbox(
                              value: rememberMe,
                              onChanged: _onRememberMeChanged
                          ),
                          data: ThemeData(
                            primarySwatch: Colors.blue,
                            unselectedWidgetColor: Colors.white, // Your color
                          ),
                        ),
                        FlatButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => MyAccount()
                            ));
                          },
                          child: Text("Confirmer age : 19 ans",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Theme(
                          child: Checkbox(
                              value: rememberMe,
                              onChanged: _onRememberMeChanged
                          ),
                          data: ThemeData(
                            primarySwatch: Colors.blue,
                            unselectedWidgetColor: Colors.white, // Your color
                          ),
                        ),
                        FlatButton(
                          onPressed: ()
                          {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => MyAccount()
                            ));
                          },
                          child: Text("Confirmer email ou modifier",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Theme(
                          child: Checkbox(
                              value: rememberMe,
                              onChanged: _onRememberMeChanged
                          ),
                          data: ThemeData(
                            primarySwatch: Colors.blue,
                            unselectedWidgetColor: Colors.white, // Your color
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width*0.7,
                          ),
                          child: Text("Recevoir des notifications pour tous les nouveaux jobs ou nouvelles reductions",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),),
                        ),

                      ],
                    ),
                    SizedBox(height: 30,),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ValidateCVStep3()
                        ));
                      },
                      color: Theme.of(context).primaryColor,
                      child: Text("VALIDER ETAPE 2",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),),
                      padding: EdgeInsets.only(top: 15,bottom: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MyAccount()
                        ));
                      },
                      child: Text("MODIFIER MES INFOS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: TextDecoration.underline
                      ),),
                    )

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
