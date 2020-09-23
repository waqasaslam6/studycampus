import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/ValidateCVStep1.dart';
import 'package:studycampus/ValidateCVStep3.dart';

class CVMode extends StatefulWidget {
  @override
  _CVModeState createState() => _CVModeState();
}

class _CVModeState extends State<CVMode> {
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
        padding: EdgeInsets.all(30),
        height: MediaQuery.of(context).size.height*0.8,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width
              ),
              child: Text("Souhaitez vous modifier vos informations en ligne pour postuler a ce job ?",
                style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[300]
                ),),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    padding: EdgeInsets.only(top: 15,bottom: 15),
                    color: Theme.of(context).primaryColor,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ValidateCVStep1()
                      ));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Text("MODIFIER MON CV",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    padding: EdgeInsets.only(top: 15,bottom: 15),
                    color: Theme.of(context).primaryColor,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => ValidateCVStep3()
                      ));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Text("CONTINUER SANS MODIFIER",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
