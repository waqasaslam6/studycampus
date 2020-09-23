import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studycampus/CVMode.dart';

class ApplyJob extends StatefulWidget {
  @override
  _ApplyJobState createState() => _ApplyJobState();
}

class _ApplyJobState extends State<ApplyJob> {


  Future<bool> _onBackPressed() async {
    // Your back press code here...
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
          backgroundColor: Color(0xffe7e9e7),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
          height: MediaQuery.of(context).size.height*0.2,
          // width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/job2.jpg"),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.25,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                 IconButton(
                   onPressed: ()=>Navigator.pop(context),
                    icon: Icon(Icons.arrow_back,color: Colors.white,),
                 ),
                  Text("- 10% au dela de la lere heure",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),)

                ],
              ),
            ],
          ),
          ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Barberousse",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xff274066)
                        ),),
                        SizedBox(height: 5,),
                        Text("Le 09/12/2018",
                        style: TextStyle(
                          color: Colors.grey,
                        ),),
                        SizedBox(height: 5,),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 3,
                          ),
                          color: Color(0xff274066),
                          child: Text("JUSQUAU VENDREDI 12/12/18",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white,
                            ),),
                        ),
                      ],
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: 60,
                        maxWidth: 60,
                      ),
                      color: Colors.white,
                      child: Image.asset("assets/images/barberousse.png"),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20,right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Sur tous les tarifs",
                    style: GoogleFonts.lato(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    Text("Qui cum venisset ob haec festinatis itineribus Antiochiam, praestrictis palatii ianuis, contempto Caesare, quem videri decuerat, ad praetorium cum pompa.",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 14,),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
             SizedBox(height: 40,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Container(
                   height: 40,
                   width: 40,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     shape: BoxShape.circle
                   ),
                   child: Center(
                     child: IconButton(
                       onPressed: (){},
                       icon: Image.asset("assets/icons/fb.png",
                       color: Theme.of(context).primaryColor,),
                     ),
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 40,
                   width: 40,
                   decoration: BoxDecoration(
                       color: Theme.of(context).primaryColor,
                       shape: BoxShape.circle
                   ),
                   child: Center(
                     child: IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.location_on,color: Colors.white,size: 15,),
                     ),
                   ),
                 ),
               ],
             ),
             SizedBox(height: 40,),
               Expanded(
                 child: Stack(
                   alignment: Alignment.topCenter,
                   overflow: Overflow.visible,
                   fit: StackFit.passthrough,
                   children: <Widget>[
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: <Widget>[
                         Container(width: MediaQuery.of(context).size.width,height: 30,),
                         Expanded(
                           child: Container(
                             width: MediaQuery.of(context).size.width,
                             color: Color(0xff1f2b4c),
                      //       padding: EdgeInsets.only(left: 50,top: 50,bottom: 40,right: 10),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image.asset("assets/images/bar.png"),
                                 SizedBox(width: 20,),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: <Widget>[
                                     Text("COMMENT UTILISER SON COUPON?",
                                       style: GoogleFonts.lato(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                       ),),
                                     Text("1) COMMENT UTILISER SON COUPON",
                                       style: GoogleFonts.lato(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     Text("2) COMMENT UTILISER SON COUPON",
                                       style: GoogleFonts.lato(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     Text("3) COMMENT UTILISER SON COUPON",
                                       style: GoogleFonts.lato(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     Text("4) COMMENT UTILISER SON COUPON",
                                       style: GoogleFonts.lato(
                                         color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                   ],
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                     Container(
                       padding: EdgeInsets.only(left: 30,right: 30),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Expanded(
                             child: MaterialButton(
                               padding: EdgeInsets.only(top: 17,bottom: 17,),
                               color: Theme.of(context).primaryColor,
                               onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(
                                     builder: (context) => CVMode()
                                 ));
                               },
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(50))
                               ),
                               child: Text("POSTULER A CE JOB",
                                 style: TextStyle(
                                   fontSize: 18,
                                   color: Colors.white,
                                 ),),
                             ),
                           ),
                         ],
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
