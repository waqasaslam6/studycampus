import 'package:flutter/material.dart';
import 'package:studycampus/iAccept.dart';
import 'package:studycampus/models/Item.dart';
import 'package:google_fonts/google_fonts.dart';

class ValidateCVStep3 extends StatefulWidget {
  @override
  _ValidateCVStep3State createState() => _ValidateCVStep3State();
}

class _ValidateCVStep3State extends State<ValidateCVStep3> {
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
                        Text("3/3 COMPETENCE ET EXPERIENCE",
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[300]
                          ),),
                      ],
                    ),
                    SizedBox(height: 20,),
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
                    SizedBox(height: 15,),
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
                    SizedBox(height: 15,),
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
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Cochez vos competences pour ce job:",
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),),
                      ],
                    ),
                    SizedBox(height: 15,),
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
                        Text("Ponctuel",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),

                      ],
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
                        Text("Serieux",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),

                      ],
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
                        Text("Rigoureux",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),

                      ],
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
                        Text("Sportifs",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),),

                      ],
                    ),

                    SizedBox(height: 15,),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => iAccept()
                        ));
                      },
                      color: Theme.of(context).primaryColor,
                      child: Text("VALIDER ETAPE 3",
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
