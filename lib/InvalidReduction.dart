import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvalidReduction extends StatefulWidget {
  @override
  _InvalidReductionState createState() => _InvalidReductionState();
}

class _InvalidReductionState extends State<InvalidReduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
           Expanded(
           flex: 1,
           child: Stack(
           alignment: Alignment.center,
             children: <Widget>[
             Container(child: Image.asset("assets/images/burger5.jpg")),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.symmetric(
                     horizontal: 3,
                     vertical: 3,
                   ),
                   color: Theme.of(context).primaryColor,
                   child: Text("MC DONALD'S",
                   style: GoogleFonts.boogaloo(
                     color: Colors.white,
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   ),),
                 ),
                 Container(
                   padding: EdgeInsets.symmetric(
                     horizontal: 3,
                     vertical: 3,
                   ),
                   color: Colors.red,
                   child: Text("REDUCTION NON VALIDEE",
                     style: GoogleFonts.lato(
                       color: Colors.white,
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                     ),),
                 ),
               ],
             ),
             ],
           ),
         ),
           Expanded(
           flex: 1,
           child: Container(
             padding: EdgeInsets.only(left: 15,right: 15),
             color: Color(0xff274066),
             child: Center(
               child: Column(
                 children:<Widget>[
                   Container(
                     color: Colors.black,
                     child: Image.asset("assets/images/mcdonalds.png",
                       width: 60,),
                   ),
                   SizedBox(height: 20,),
                   Text("25% sur tous les menus",
                   style: GoogleFonts.lato(
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),),
                 ],
               ),
             ),
           ),
         ),
           Expanded(
           flex: 1,
           child: Container(
             padding: EdgeInsets.only(left: 50,right: 50),
             width: MediaQuery.of(context).size.width,
             child: Center(
               child: Text("Vous pouvez utiliser ce coupon toutes les : 24H00",
                 style: TextStyle(
                     fontSize: 26,
                     color: Colors.grey[600]
                 ),),
             ),
           ),
         ),
          ],
        ),
      ),
    );
  }
}
