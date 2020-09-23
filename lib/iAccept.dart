import 'package:flutter/material.dart';
import 'package:studycampus/Jobs.dart';
import 'package:studycampus/models/Item.dart';
import 'package:google_fonts/google_fonts.dart';

class iAccept extends StatefulWidget {
  @override
  _iAcceptState createState() => _iAcceptState();
}

class _iAcceptState extends State<iAccept> {

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
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width
              ),
              child: Text("Acceptez vous que I'entreprise partenaire vous contact directment ?",
                style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[300]
                ),),
            ),
            SizedBox(height: 30,),
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
                Text("Par mail",
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
                Text("Par telephone",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),),

              ],
            ),
            SizedBox(
              height: 5,
            ),

            SizedBox(height: 30,),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              onPressed: (){

                showDialog(context: context,
                child: AlertDialog(
                  content: Text("Votre demande de candidature pour ce job à été envoyé"),
                ));

              },
              color: Theme.of(context).primaryColor,
              child: Text("J' ACCEPTE",
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
    );
  }
}
